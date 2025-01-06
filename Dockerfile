FROM python:3.8-slim-buster

# Update and install required tools
RUN apt update -y && apt install awscli -y

# Set the working directory
WORKDIR /app

# Copy application files
COPY . /app

# Install Python dependencies
RUN pip install -r requirements.txt

# Expose port 80
EXPOSE 80

# Run the Flask application
CMD ["python3", "app.py"]

