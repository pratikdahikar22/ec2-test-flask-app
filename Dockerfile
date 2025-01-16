# Use an official Python runtime as a base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /main

# Copy the requirements file (if any) and the app into the container
COPY requirements.txt requirements.txt
COPY main.py main.py

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port Flask will run on
EXPOSE 5000

# Command to run the Flask app
CMD ["python", "main.py"]
