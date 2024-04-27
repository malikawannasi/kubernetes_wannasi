# Use an official Python runtime as a base image
FROM python:3.9
LABEL authors="wannasi_malika"

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the working directory
COPY requirements.txt /app

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /app
COPY . /app

# Expose the port that the application will listen on
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]
