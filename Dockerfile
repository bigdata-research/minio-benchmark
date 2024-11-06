FROM debian:stable-slim
# Download and install necessary packages and Warp
ADD https://github.com/minio/warp/releases/download/v1.0.5/warp_Linux_x86_64.deb warp_Linux_x86_64.deb

RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    vim \
    iputils-ping \
    dpkg \
    && apt-get install -f -y \
    && dpkg -i warp_Linux_x86_64.deb \
    && rm warp_Linux_x86_64.deb \
    && rm -rf /var/lib/apt/lists/*

# Keep the container running
CMD ["tail", "-f", "/dev/null"]

# Build the Docker image
# docker build -t de-bpn-benchmark-minio:v1 .
