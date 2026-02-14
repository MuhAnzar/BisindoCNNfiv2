#!/bin/sh
set -e

CERT_DIR="/etc/nginx/certs"
CERT_FILE="$CERT_DIR/self.crt"
KEY_FILE="$CERT_DIR/self.key"

# Auto-generate self-signed SSL cert if not exists
if [ ! -f "$CERT_FILE" ] || [ ! -f "$KEY_FILE" ]; then
    echo "🔐 No SSL certificate found. Generating self-signed certificate..."
    openssl req -x509 -nodes -days 365 \
        -newkey rsa:2048 \
        -keyout "$KEY_FILE" \
        -out "$CERT_FILE" \
        -subj "/C=ID/ST=Local/L=Local/O=BisindoCNN/CN=localhost"
    echo "✅ SSL certificate generated!"
else
    echo "✅ SSL certificate found."
fi

# Start Nginx
echo "🚀 Starting Nginx..."
exec nginx -g "daemon off;"
