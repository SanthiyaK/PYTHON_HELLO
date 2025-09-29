# Use official Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy app code
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir flask

# Expose port 5000
EXPOSE 5000

# Run Flask app
CMD ["python", "app.py"]
