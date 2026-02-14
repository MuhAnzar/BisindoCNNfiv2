#!/bin/bash
# ============================================
# BISINDO CNN - Model Setup Script
# ============================================
# Run this on VPS to copy models from local machine
# or create the directory structure for manual upload.
#
# Usage:
#   chmod +x setup_models.sh
#   ./setup_models.sh
# ============================================

MODELS_DIR="frontend/storage/app/public/models"
KATA_DIR="$MODELS_DIR/kata"

echo "============================================"
echo "📦 BISINDO CNN - Model Setup"
echo "============================================"

# Create directories
mkdir -p "$MODELS_DIR"
mkdir -p "$KATA_DIR"

# Check if models exist
echo ""
echo "📁 Checking model files..."

check_file() {
    if [ -f "$1" ]; then
        size=$(du -h "$1" | cut -f1)
        echo "  ✅ $1 ($size)"
    else
        echo "  ❌ MISSING: $1"
        echo "     Please upload this file manually."
    fi
}

# Abjad model
check_file "$MODELS_DIR/best_abjad.keras"
check_file "$MODELS_DIR/class_names.json"

# Kata model
check_file "$KATA_DIR/best_model_v3.keras"
check_file "$KATA_DIR/labels_v3.json"

echo ""
echo "============================================"
echo "If models are missing, upload from local machine:"
echo ""
echo "  # From your local project directory:"
echo "  scp -i ~/.ssh/your_key frontend/storage/app/public/models/best_abjad.keras user@VPS_IP:$(pwd)/$MODELS_DIR/"
echo "  scp -i ~/.ssh/your_key frontend/storage/app/public/models/class_names.json user@VPS_IP:$(pwd)/$MODELS_DIR/"
echo "  scp -i ~/.ssh/your_key frontend/storage/app/public/models/kata/best_model_v3.keras user@VPS_IP:$(pwd)/$KATA_DIR/"
echo "  scp -i ~/.ssh/your_key frontend/storage/app/public/models/kata/labels_v3.json user@VPS_IP:$(pwd)/$KATA_DIR/"
echo ""
echo "Then restart the API container:"
echo "  docker compose restart api"
echo "============================================"
