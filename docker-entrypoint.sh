#!/bin/bash
set -e

# ============================================
# BISINDO CNN - Docker Entrypoint
# ============================================

echo "=========================================="
echo "🚀 BISINDO CNN - Laravel Container Starting"
echo "=========================================="

# Wait for MySQL to be ready
echo "⏳ Waiting for database..."
max_tries=30
count=0
until php -r "new PDO('mysql:host=${DB_HOST};port=${DB_PORT}', '${DB_USERNAME}', '${DB_PASSWORD}');" 2>/dev/null; do
    count=$((count + 1))
    if [ $count -ge $max_tries ]; then
        echo "❌ Database connection timeout after ${max_tries} attempts"
        exit 1
    fi
    echo "   Attempt $count/$max_tries - waiting 2s..."
    sleep 2
done
echo "✅ Database connected!"

# Generate app key if not set
if [ -z "$APP_KEY" ] || [ "$APP_KEY" = "base64:" ]; then
    echo "🔑 Generating application key..."
    php artisan key:generate --force
fi

# Clear and cache config
echo "⚙️  Caching configuration..."
php artisan config:clear
php artisan config:cache

# Run migrations
echo "📦 Running migrations..."
php artisan migrate --force

# Run seeders (only if database is fresh)
echo "🌱 Running seeders..."
php artisan db:seed --force 2>/dev/null || echo "   Seeders already ran or skipped."

# Create storage link
echo "🔗 Creating storage link..."
php artisan storage:link 2>/dev/null || echo "   Storage link already exists."

echo "=========================================="
echo "✅ Laravel ready! Starting server..."
echo "=========================================="

# Execute the CMD
exec "$@"
