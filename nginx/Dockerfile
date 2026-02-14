FROM nginx:latest

RUN apt-get update && apt-get install -y --no-install-recommends openssl \
    && rm -rf /var/lib/apt/lists/*

# Create certbot webroot
RUN mkdir -p /var/www/certbot
