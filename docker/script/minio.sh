#!/bin/sh

echo "Print env..."
printenv PATH
# Set default credentials if not provided
export MINIO_ROOT_USER=${MINIO_ROOT_USER}
export MINIO_ROOT_PASSWORD=${MINIO_ROOT_PASSWORD}

# Start MinIO server
exec minio server /data --address ":9000" --console-address ":9001"