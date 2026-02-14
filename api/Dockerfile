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
# The MODELS_DIR env var tells handlers where to find models
ENV MODELS_DIR=/app/models

EXPOSE 5000

CMD ["python", "app.py"]
