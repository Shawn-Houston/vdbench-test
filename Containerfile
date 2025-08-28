# Use a base image with Java
#FROM openjdk:11-jre-slim
#FROM registry.redhat.io/openjdk-els/openjdk-11-runtime-rhel9@sha256:71c292921535e7d2897c35376a2b88d57d2b6021fc03053ab5f91a935d8b88e2
#FROM quay.libvirt8/shouston/openjdk-els/openjdk-11-runtime-rhel9:sha256-71c292921535e7d2897c35376a2b88d57d2b6021fc03053ab5f91a935d8b88e2
FROM quay.libvirt8/shouston/ubi9:latest

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
RUN mkdir output
RUN chmod 777 output

RUN mkdir -p /data/vdbench-test-data
RUN chmod 777 /data/vdbench-test-data/


# Copy Vdbench parameter files or scripts (if any)
# COPY my_vdbench_test.par .

# Define the command to run Vdbench
# This example assumes you want to run a specific test.
# Adjust 'vdbench -f my_vdbench_test.par' based on your needs.
#CMD ["./vdbench", "-f", "/etc/vdbench/vdbench-test.conf"]
#CMD ["sleep", "300"]

# Alternatively, if you want to run Vdbench interactively or with different parameters:
# ENTRYPOINT ["bash"]

