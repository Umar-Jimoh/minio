#!/bin/sh

# Print keys to confirm they're loaded (optional)
echo "MINIO_ROOT_USER: $MINIO_ROOT_USER"
echo "MINIO_ROOT_PASSWORD: $MINIO_ROOT_PASSWORD"

# Start MinIO with correct interface binding
exec minio server /data \
  --console-address ":9001" \
  --address ":9000"