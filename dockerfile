# Build arguments for version info (must be before FROM)
ARG GIT_REF=local
ARG BUILD_DATE=dev
ARG BUILD_VERSION=dev

FROM mcr.microsoft.com/powershell:alpine-3.20

# Create data directory first
RUN mkdir -p /data

# Write version info from build args (passed from CI)
echo "$BUILD_VERSION" > /data/version.txt
echo "$BUILD_DATE" > /data/build_date.txt

# Set environment variables - use the BUILD_ARG value or fall back to git-derived version
ENV BUILD_VERSION=${BUILD_VERSION}
ENV BUILD_DATE=${BUILD_DATE}

# Install necessary packages
RUN apk update && \
    apk add --no-cache supervisor docker-cli bash curl jq docker-cli-compose
RUN pwsh -c Install-Module Pode -Force

# Install regctl via edge testing repo
RUN sed -i 's/https:\/\/dl-cdn.alpinelinux.org\/alpine\/[^*]*\/main/https:\/\/dl-cdn.alpinelinux.org\/alpine\/edge\/main/g' /etc/apk/repositories
RUN sed -i 's/https:\/\/dl-cdn.alpinelinux.org\/alpine\/[^*]*\/community/https:\/\/dl-cdn.alpinelinux.org\/alpine\/edge\/community/g' /etc/apk/repositories
RUN echo 'https://dl-cdn.alpinelinux.org/alpine/edge/testing' | tee -a /etc/apk/repositories
RUN apk update && \
    apk add --no-cache regclient

# Create a working directory & copy the necessary files
WORKDIR /data
COPY ./data /data/

# Make the entrypoint script executable
RUN chmod 700 /data/entrypoint.sh
RUN chmod +x /data/entrypoint.sh

# Make the dockcheck.sh script executable
RUN chmod 555 /data/dockcheck.sh
RUN chmod +x /data/dockcheck.sh

# Make a folder for logging
RUN mkdir -p /var/log

# Configure Supervisord
RUN mkdir -p /var/log/supervisor

# Create dir for DB
RUN mkdir -p /data/db/

# Set default command to run supervisord
CMD ["supervisord", "-n", "-c", "/data/supervisord.conf"]
