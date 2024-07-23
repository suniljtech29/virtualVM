# Use an official Ubuntu as a parent image
FROM ubuntu:latest

# Set the maintainer label
LABEL maintainer="your-email@example.com"

# Update and install necessary packages
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    wget \
    vim \
    git

# Set the working directory
WORKDIR /workspace

# Copy the current directory contents into the container at /workspace
COPY . /workspace

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Define the command to run when the container starts
CMD ["bash"]
