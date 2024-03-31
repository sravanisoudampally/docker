# Use a base image
FROM ubuntu:latest

# Set the working directory
WORKDIR /app

# Copy only the requirements file to avoid copying unnecessary files
COPY requirements.txt .

# Run commands inside the container
RUN apt-get update && \
    apt-get install -y python3 && \
    apt-get install -y python3-pip && \
    pip3 install -r requirements.txt

# Expose ports
EXPOSE 8080

# Define a default command to run when the container starts
CMD ["python3", "app.py"]
