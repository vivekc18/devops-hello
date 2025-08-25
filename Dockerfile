# Use official Python image
FROM python:3.10-slim

# Set working directory inside the container
WORKDIR /app

# Install dependencies first (leverages Docker layer cache)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the app code
COPY . .

# Expose the Flask port
EXPOSE 5000

# Start the app
CMD ["python", "app.py"]
