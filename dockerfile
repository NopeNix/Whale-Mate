# Build arguments for version info (must be before FROM)
# These can be overridden at build time
ARG GIT_REF=local
ARG BUILD_DATE=$(date +%Y-%m-%d)

FROM mcr.microsoft.com/powershell:alpine-3.20

# Get version from git during build - this is the most reliable method!
RUN apk add --no-cache git >/dev/null 2>&1 || true

# Try to get git info, fallback to args
RUN VERSION_FROM_GIT="unknown" && \
    if [ -d /github/workspace/.git ]; then \
        cd /github/workspace; \
        GIT_BRANCH=$(git rev-parse --abbrev-ref HEAD 2>/dev/null || echo "unknown"); \
        if [ "$GIT_BRANCH" = "main" ]; then PREFIX="MAIN"; \
        elif [ "$GIT_BRANCH" = "dev" ]; then PREFIX="DEV"; \
        else PREFIX="PR"; fi; \
        DATE=$(date +%Y-%m-%d); \
        TIME=$(date +%H%M); \
        COMMIT_COUNT=$(git rev-list --count HEAD 2>/dev/null || echo "1"); \
        VERSION_FROM_GIT="${PREFIX}-${DATE}-${TIME}-${COMMIT_COUNT}"; \
    fi; \
    echo "$VERSION_FROM_GIT" > /data/version.txt; \
    echo "$BUILD_DATE" > /data/build_date.txt; \
    echo "Generated version: $VERSION_FROM_GIT"

# Set environment variables
ENV BUILD_VERSION=dev
ENV BUILD_DATE=unknown

# Install necessary packages
RUN apk update && \
    apk add --no-cache supervisor docker-cli bash curl jq docker-cli-compose
RUN pwsh -c Install-Module Pode -Force

# Install regctl via edge testing repo
RUN sed -i 's/https:\/\/dl-cdn.alpinelinux.org\/alpine\/[^/]*\/main/https:\/\/dl-cdn.alpinelinux.org\/alpine\/edge\/main/g' /etc/apk/repositories
RUN sed -i 's/https:\/\/dl-cdn.alpinelinux.org\/alpine\/[^/]*\/community/https:\/\/dl-cdn.alpinelinux.org\/alpine\/edge\/community/g' /etc/apk/repositories
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
