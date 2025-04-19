# Use the official MinIO image as the base
FROM minio/minio:latest

# Expose MinIO default ports
EXPOSE 9000 9001

# Command to start MinIO server
# We use environment variables for MINIO_ROOT_USER and MINIO_ROOT_PASSWORD
CMD ["server", "/data", "--console-address", ":9001", "--address", ":9000"]