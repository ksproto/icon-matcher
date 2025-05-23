# Use TensorFlow base image with Python
FROM tensorflow/tensorflow:2.13.0

WORKDIR /app

# Install dependencies
RUN apt-get update && apt-get install -y python3-opencv
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy your app code
COPY app ./app

# Default command (you can override with docker run)
CMD ["python", "app/main.py"]
