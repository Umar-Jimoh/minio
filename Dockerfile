FROM minio/minio:latest

# # Copy your startup script
# COPY docker/script/minio.sh /usr/bin/entrypoint.sh
# RUN chmod +x /usr/bin/entrypoint.sh

# Expose the required ports
EXPOSE 9000

# Use your script as entrypoint
CMD ["server", "/data", "--address", ":9000"]