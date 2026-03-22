FROM python:3.10-slim

WORKDIR /app

# Install system dependencies needed for pdf processing
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    gcc \
    poppler-utils \
    tesseract-ocr \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Create data structures first to avoid permissions issues later
RUN mkdir -p data/pdfs data/vectors

COPY . .

EXPOSE 8001

# The FastAPI app is exposed on 8001 inside run_api.py
CMD ["python", "run_api.py"]
