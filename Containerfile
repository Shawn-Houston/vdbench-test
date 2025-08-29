# Use a base image with Java
FROM registry.access.redhat.com/ubi8:latest

RUN dnf update -y && \
    dnf install -y unzip java-11-openjdk-headless iproute procps-ng
    
# Set working directory inside the container
WORKDIR /opt/vdbench

# Download and extract Vdbench (replace with your Vdbench version and download method)
# You might need to use curl or wget to download the zip file from Oracle,
# ensuring you handle any authentication or license acceptance.
# For simplicity in this example, assume vdbench.zip is in the build context.
COPY vdbench.zip .
RUN unzip vdbench.zip && rm vdbench.zip


