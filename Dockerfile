FROM alpine:3.18

WORKDIR /app
COPY content.txt .

# Make the file readable from the container
RUN chmod +r /app/content.txt

# Set labels for better container identification
LABEL org.opencontainers.image.source="https://github.com/easamoah7/text-modifier-project"
LABEL org.opencontainers.image.description="Docker image with modified text file"

# Display the contents of the file when the container runs
CMD ["cat", "/app/content.txt"]