#!/bin/bash
# ============================================
# BISINDO CNN - SSL Init Script (Let's Encrypt)
# ============================================
# Run this ONCE on the VPS after first deploy:
#   chmod +x init-ssl.sh
#   ./init-ssl.sh
# ============================================

set -e

# ---- Configuration ----
IP="34.72.179.247"
DOMAIN="${IP}.nip.io"
EMAIL="admin@example.com"  # Change this to your email

echo "============================================"
echo "🔐 BISINDO CNN - SSL Certificate Setup"
echo "============================================"
echo "Domain: $DOMAIN"
echo "Email:  $EMAIL"
echo "============================================"
echo ""

# Step 1: Make sure containers are running (HTTP mode)
echo "📦 Step 1: Starting containers in HTTP mode..."
docker compose up -d --build
echo "⏳ Waiting for Nginx to be ready..."
sleep 5

# Step 2: Test HTTP is reachable
echo ""
echo "🔍 Step 2: Testing HTTP access..."
if curl -s -o /dev/null -w "%{http_code}" "http://$DOMAIN/.well-known/acme-challenge/test" | grep -q "404\|301"; then
    echo "✅ Nginx is serving HTTP correctly"
else
    echo "⚠️  Warning: HTTP may not be reachable. Proceeding anyway..."
fi

# Step 3: Request certificate from Let's Encrypt
echo ""
echo "🔐 Step 3: Requesting SSL certificate from Let's Encrypt..."
docker compose run --rm certbot certonly \
    --webroot \
    --webroot-path=/var/www/certbot \
    --email "$EMAIL" \
    --agree-tos \
    --no-eff-email \
    -d "$DOMAIN"

# Step 4: Update Nginx config to HTTPS
echo ""
echo "⚙️  Step 4: Switching Nginx to HTTPS mode..."
cat > nginx/conf/default.conf << 'NGINX_CONF'
# ============================================
# BISINDO CNN - Nginx Config (HTTPS Production)
# ============================================

# --- HTTP: ACME challenge + redirect ---
server {
    listen 80;
    server_name _;

    location /.well-known/acme-challenge/ {
        root /var/www/certbot;
    }

    location / {
        return 301 https://$host$request_uri;
    }
}

# --- HTTPS: Main server ---
server {
    listen 443 ssl;
    server_name _;

    # Let's Encrypt certificate
    ssl_certificate     /etc/letsencrypt/live/DOMAIN_PLACEHOLDER/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/DOMAIN_PLACEHOLDER/privkey.pem;

    # Modern SSL settings
    ssl_protocols TLSv1.2 TLSv1.3;
    ssl_ciphers HIGH:!aNULL:!MD5;
    ssl_prefer_server_ciphers on;

    # HSTS
    add_header Strict-Transport-Security "max-age=31536000" always;

    # Max upload size
    client_max_body_size 50M;

    # Proxy to Laravel Frontend
    location / {
        proxy_pass http://frontend:8000;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;

        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection "upgrade";
    }
}
NGINX_CONF

# Replace domain placeholder with actual domain
sed -i "s/DOMAIN_PLACEHOLDER/$DOMAIN/g" nginx/conf/default.conf

# Step 5: Reload Nginx with HTTPS
echo ""
echo "🔄 Step 5: Reloading Nginx with SSL..."
docker compose exec nginx nginx -s reload

echo ""
echo "============================================"
echo "✅ SSL Setup Complete!"
echo "============================================"
echo ""
echo "🌐 Access your app at:"
echo "   https://$DOMAIN"
echo ""
echo "📌 To renew certificate (before it expires in 90 days):"
echo "   docker compose run --rm certbot renew"
echo "   docker compose exec nginx nginx -s reload"
echo ""
echo "💡 Tip: Add this cron job for auto-renewal:"
echo '   0 3 * * 0 cd /home/ytrandom107/BisindoCNNfiv2 && docker compose run --rm certbot renew && docker compose exec nginx nginx -s reload'
echo "============================================"
