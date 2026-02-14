#!/bin/bash
# ============================================
# BISINDO CNN - SSL Init Script (Let's Encrypt)
# ============================================
# Run ONCE on VPS:
#   chmod +x init-ssl.sh && ./init-ssl.sh
# ============================================

set -e

# ---- Configuration ----
IP="34.72.179.247"
DOMAIN="${IP}.nip.io"
EMAIL="admin@example.com"  # Change to your email

echo "============================================"
echo "🔐 BISINDO - SSL Setup"
echo "  Domain: $DOMAIN"
echo "============================================"

# Step 1: Create certbot directories
echo ""
echo "📁 Step 1: Creating directories..."
mkdir -p certbot/www/.well-known/acme-challenge
mkdir -p certbot/letsencrypt

# Step 2: Start containers
echo ""
echo "📦 Step 2: Starting containers..."
docker compose down 2>/dev/null || true
docker compose up -d --build
echo "⏳ Waiting 5s for Nginx..."
sleep 5

# Step 3: Test ACME path
echo ""
echo "🔍 Step 3: Testing ACME challenge path..."

# Create test file
mkdir -p certbot/www/.well-known/acme-challenge
echo "acme-test-ok" > certbot/www/.well-known/acme-challenge/test-file
chmod -R 755 certbot/www

# Debug: Check if file exists inside container
echo "DEBUG: Checking file inside nginx container..."
docker compose exec nginx ls -la /var/www/certbot/.well-known/acme-challenge/

# Curl test
HTTP_CODE=$(curl -s -o /dev/null -w "%{http_code}" "http://${DOMAIN}/.well-known/acme-challenge/test-file")
if [ "$HTTP_CODE" = "200" ]; then
    echo "✅ ACME challenge path works! (HTTP $HTTP_CODE)"
else
    echo "❌ ACME challenge path failed (HTTP $HTTP_CODE)"
    echo "   Debug info:"
    echo "   - Domain: $DOMAIN"
    echo "   - Test URL: http://${DOMAIN}/.well-known/acme-challenge/test-file"
    echo "   - Nginx Logs:"
    docker compose logs nginx | tail -n 5
    
    # Don't exit yet, let's try to request anyway if it's just a curl issue from local
    # exit 1 
fi
rm -f certbot/www/.well-known/acme-challenge/test-file

# Step 4: Request certificate
echo ""
echo "🔐 Step 4: Requesting SSL certificate..."
docker run --rm \
    -v "$(pwd)/certbot/www:/var/www/certbot" \
    -v "$(pwd)/certbot/letsencrypt:/etc/letsencrypt" \
    certbot/certbot certonly \
    --webroot \
    -w /var/www/certbot \
    --email "$EMAIL" \
    --agree-tos \
    --no-eff-email \
    -d "$DOMAIN"

# Step 5: Switch nginx to HTTPS
echo ""
echo "⚙️  Step 5: Enabling HTTPS..."
cat > nginx/conf/default.conf << NGINXEOF
# ============================================
# Nginx - HTTPS Production (Let's Encrypt)
# ============================================

# HTTP -> HTTPS redirect + ACME challenge
server {
    listen 80;
    server_name ${DOMAIN};

    location /.well-known/acme-challenge/ {
        root /var/www/certbot;
    }

    location / {
        return 301 https://\\\$host\\\$request_uri;
    }
}

# HTTPS
server {
    listen 443 ssl;
    server_name ${DOMAIN};

    ssl_certificate     /etc/letsencrypt/live/${DOMAIN}/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/${DOMAIN}/privkey.pem;

    ssl_protocols TLSv1.2 TLSv1.3;
    ssl_ciphers HIGH:!aNULL:!MD5;
    ssl_prefer_server_ciphers on;
    add_header Strict-Transport-Security "max-age=31536000" always;

    client_max_body_size 50M;

    location / {
        proxy_pass http://frontend:8000;
        proxy_set_header Host \\\$host;
        proxy_set_header X-Real-IP \\\$remote_addr;
        proxy_set_header X-Forwarded-For \\\$proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto \\\$scheme;
        proxy_http_version 1.1;
        proxy_set_header Upgrade \\\$http_upgrade;
        proxy_set_header Connection "upgrade";
    }
}
NGINXEOF

# Step 6: Reload nginx
echo ""
echo "🔄 Step 6: Reloading Nginx..."
docker compose restart nginx
sleep 2

echo ""
echo "============================================"
echo "✅ SSL Setup Complete!"
echo ""
echo "🌐 https://${DOMAIN}"
echo ""
echo "📌 Renew (before 90 days):"
echo "   docker run --rm -v \$(pwd)/certbot/letsencrypt:/etc/letsencrypt -v \$(pwd)/certbot/www:/var/www/certbot certbot/certbot renew"
echo "   docker compose restart nginx"
echo "============================================"
