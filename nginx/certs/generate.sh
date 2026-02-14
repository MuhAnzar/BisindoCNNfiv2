#!/bin/bash
# ============================================
# Generate Self-Signed SSL Certificate
# ============================================
# Run this script on the VPS inside nginx/certs/
#
# Usage:
#   cd nginx/certs
#   chmod +x generate.sh
#   ./generate.sh
# ============================================

echo "🔐 Generating self-signed SSL certificate..."

openssl req -x509 -nodes -days 365 \
  -newkey rsa:2048 \
  -keyout self.key \
  -out self.crt \
  -subj "/C=ID/ST=Local/L=Local/O=BisindoCNN/CN=localhost"

echo ""
echo "✅ SSL certificate generated!"
echo "   - Certificate: self.crt"
echo "   - Private Key: self.key"
echo ""
echo "📌 Next steps:"
echo "   cd ../.. && docker compose up -d --build"
