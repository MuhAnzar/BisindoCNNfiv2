# ============================================
# BISINDO CNN - Flask API (Python) Dockerfile
# ============================================
FROM python:3.10-slim

# System dependencies for OpenCV, mediapipe, etc.
RUN apt-get update && apt-get install -y --no-install-recommends \
    libgl1 \
    libglib2.0-0 \
    libsm6 \
    libxext6 \
    libxrender-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Install Python dependencies first (cache layer)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY app.py .
COPY abjad_handler.py .
COPY kata_handler.py .
COPY nlg_handler.py .
COPY nlg_kalimat_handler.py .
COPY nlg_kata_handler.py .

# Models will be mounted via volume at /app/models
# The handlers reference: ../storage/app/public/models
# We create a symlink so the existing path resolution works
RUN mkdir -p /app/storage/app/public/models
# Symlink: when handler does os.path.join(base_dir, '..', 'storage', 'app', 'public', 'models')
# base_dir = /app, so it looks at /storage/app/public/models
# We need to handle this. Let's create the path at the root level too.
RUN mkdir -p /storage/app/public/models && \
    ln -sf /app/models/best_abjad.keras /storage/app/public/models/best_abjad.keras && \
    ln -sf /app/models/class_names.json /storage/app/public/models/class_names.json && \
    mkdir -p /storage/app/public/models/kata && \
    ln -sf /app/models/kata/best_model_v3.keras /storage/app/public/models/kata/best_model_v3.keras && \
    ln -sf /app/models/kata/labels_v3.json /storage/app/public/models/kata/labels_v3.json

EXPOSE 5000

CMD ["python", "app.py"]
