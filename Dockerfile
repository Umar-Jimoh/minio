# Use a lightweight image with MinIO + Nginx
FROM ubuntu:22.04

# Install required tools
RUN apt-get update && \
    apt-get install -y wget nginx curl unzip && \
    wget https://dl.min.io/server/minio/release/linux-amd64/minio && \
    chmod +x minio && \
    mv minio /usr/local/bin/

# Create MinIO user
RUN useradd -m minio

# Set MinIO environment variables

ENV MINIO_ROOT_USER=root
ENV MINIO_ROOT_PASSWORD=umarroot

# Copy Nginx config
COPY nginx.conf /etc/nginx/sites-available/default

# Expose HTTP port
EXPOSE 10000

# Start MinIO and Nginx together
CMD sh -c "/usr/local/bin/minio server /data --address ':9000' & nginx -g 'daemon off;'"
