# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir fastapi uvicorn

# Expose the port the app runs on
EXPOSE 8085

# Command to run the application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8085"]
