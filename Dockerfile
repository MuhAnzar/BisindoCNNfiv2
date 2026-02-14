# ============================================
# BISINDO CNN - Laravel Frontend Dockerfile
# ============================================

# ---- Stage 1: Build frontend assets (Vite + TailwindCSS) ----
FROM node:20-alpine AS node-builder

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm ci

COPY vite.config.js ./
COPY resources/ ./resources/

RUN npm run build

# ---- Stage 2: PHP Runtime ----
FROM php:8.2-cli

# System dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    curl \
    unzip \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libzip-dev \
    libonig-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install pdo_mysql mbstring gd zip bcmath \
    && rm -rf /var/lib/apt/lists/*

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /app

# Install PHP dependencies first (cache layer)
COPY composer.json composer.lock ./
RUN composer install --no-dev --no-scripts --no-autoloader --prefer-dist

# Copy application code
COPY . .

# Remove files not needed in container
RUN rm -rf node_modules api/.venv api/__pycache__ api/test api/test_dataset

# Complete composer install (autoload, scripts)
RUN composer dump-autoload --optimize

# Copy built assets from node stage
COPY --from=node-builder /app/public/build ./public/build

# Set permissions
RUN chown -R www-data:www-data /app/storage /app/bootstrap/cache \
    && chmod -R 775 /app/storage /app/bootstrap/cache

EXPOSE 8000

# Entrypoint script
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["php", "artisan", "serve", "--host=0.0.0.0", "--port=8000"]
