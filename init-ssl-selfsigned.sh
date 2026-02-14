#!/bin/bash
# ============================================
# BISINDO CNN - Self-Signed SSL Setup
# ============================================
# FAILSAFE METHOD when Let's Encrypt rate limits hit.
# Run: chmod +x init-ssl-selfsigned.sh && ./init-ssl-selfsigned.sh
# ============================================

set -e
IP="34.72.179.247"

echo "============================================"
echo "🔐 BISINDO - Self-Signed SSL Setup"
echo "   Mode: Emergency Fallback (Rate Limits)"
echo "============================================"

# Step 1: Generate Certs Locally
echo ""
echo "📁 Step 1: Generating self-signed certificate..."
mkdir -p nginx/certs
openssl req -x509 -nodes -days 365 \
  -newkey rsa:2048 \
  -keyout nginx/certs/self.key \
  -out nginx/certs/self.crt \
  -subj "/C=ID/ST=Jawa/L=Depok/O=BisindoCNN/CN=$IP"
chmod 644 nginx/certs/self.key nginx/certs/self.crt

# Step 2: Create Nginx Config
echo ""
echo "⚙️  Step 2: Configuring Nginx..."
cat > nginx/conf/default.conf << NGINXEOF
server {
    listen 80;
    server_name _;
    return 301 https://\$host\$request_uri;
}

server {
    listen 443 ssl;
    server_name _;

    ssl_certificate     /etc/nginx/certs/self.crt;
    ssl_certificate_key /etc/nginx/certs/self.key;

    ssl_protocols TLSv1.2 TLSv1.3;
    ssl_ciphers HIGH:!aNULL:!MD5;
    
    client_max_body_size 50M;

    location / {
        proxy_pass http://frontend:8000;
        proxy_set_header Host \$host;
        proxy_set_header X-Real-IP \$remote_addr;
        proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto \$scheme;
        proxy_http_version 1.1;
        proxy_set_header Upgrade \$http_upgrade;
        proxy_set_header Connection "upgrade";
    }
}
NGINXEOF

# Step 3: Update Docker Compose (Use simple nginx image + mounts)
# We need to ensure volume mapping is correct
echo ""
echo "🐳 Step 3: Updating Docker Compose configuration..."

# We don't touch docker-compose.yml because it already has:
#       - ./nginx/conf/default.conf:/etc/nginx/conf.d/default.conf
# But we need to make sure certs are mounted.
# The current docker-compose.yml maps ./certbot/letsencrypt... 
# We need to map ./nginx/certs to /etc/nginx/certs

# Let's patch docker-compose.yml specifically for self-signed
sed -i 's|- ./certbot/letsencrypt:/etc/letsencrypt|- ./nginx/certs:/etc/nginx/certs|g' docker-compose.yml
# Remove the certbot/www mount as it's not needed for self-signed, likely harmless to leave but cleaner to remove
sed -i '/- .\/certbot\/www:\/var\/www\/certbot/d' docker-compose.yml

# Step 4: Restart Nginx
echo ""
echo "🚀 Step 4: Restarting Nginx..."
docker compose down nginx 2>/dev/null || true
docker compose up -d nginx

echo ""
echo "============================================"
echo "✅ Self-Signed SSL Setup Complete!"
echo ""
echo "⚠️  NOTE: Browser will show 'Not Secure' warning."
echo "   Click 'Advanced' -> 'Proceed to $IP (unsafe)'"
echo ""
echo "🌐 https://$IP"
echo "============================================"
