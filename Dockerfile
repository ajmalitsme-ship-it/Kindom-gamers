# Dockerfile
FROM python:3.9-slim

WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    gcc \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy bot files
COPY bot.py .
COPY config.py .
COPY database.py .

# Create necessary directories
RUN mkdir -p logs data temp fonts

# Run bot
CMD ["python", "index.html"]
