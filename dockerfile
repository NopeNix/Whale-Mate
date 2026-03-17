# Build arguments for version info (must be before FROM)
# These can be overridden at build time
ARG GIT_REF=local
ARG BUILD_DATE=$(date +%Y-%m-%d)
ARG BUILD_VERSION=dev

FROM mcr.microsoft.com/powershell:alpine-3.20

# Create data directory first
RUN mkdir -p /data

# Get version from git during build - this is the most reliable method!
RUN apk add --no-cache git >/dev/null 2>&1 || true

# Try to get git info - check multiple possible locations
RUN VERSION_FROM_GIT="$BUILD_VERSION" && \
    for GIT_DIR in "/github/workspace/.git" "/workspace/.git" ".git"; do \
        if [ -d "$GIT_DIR" ]; then \
            cd "$GIT_DIR/.."; \
            GIT_BRANCH=$(git rev-parse --abbrev-ref HEAD 2>/dev/null || echo "unknown"); \
            if [ "$GIT_BRANCH" = "main" ]; then PREFIX="MAIN"; \
            elif [ "$GIT_BRANCH" = "dev" ]; then PREFIX="DEV"; \
            else PREFIX="PR"; fi; \
            DATE=$(date +%Y-%m-%d); \
            TIME=$(date +%H%M); \
            COMMIT_COUNT=$(git rev-list --count HEAD 2>/dev/null || echo "1"); \
            VERSION_FROM_GIT="${PREFIX}-${DATE}-${TIME}-${COMMIT_COUNT}"; \
            break; \
        fi; \
    done; \
    echo "Version source: $VERSION_FROM_GIT"; \
    echo "$VERSION_FROM_GIT" > /data/version.txt; \
    echo "$BUILD_DATE" > /data/build_date.txt

# Set environment variables - use the BUILD_ARG value or fall back to git-derived version
ENV BUILD_VERSION=${BUILD_VERSION}
ENV BUILD_DATE=${BUILD_DATE}

