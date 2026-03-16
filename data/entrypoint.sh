#!/bin/sh

# Display build version on startup
VERSION="unknown"

# First try: check environment variable
if [ -n "$BUILD_VERSION" ]; then
    VERSION="$BUILD_VERSION"
fi

# Second try: check version file
if [ "$VERSION" = "unknown" ] && [ -f /data/version.txt ]; then
    FILE_VERSION=$(cat /data/version.txt)
    if [ -n "$FILE_VERSION" ]; then
        VERSION="$FILE_VERSION"
    fi
fi

# Generate a fallback version if still unknown
if [ "$VERSION" = "unknown" ] || [ -z "$VERSION" ]; then
    VERSION="manual-$(date +%Y-%m-%d-%H%M)"
    echo "$VERSION" > /data/version.txt
fi

echo "=========================================="
echo "  Whale Mate - Build: $VERSION"
echo "=========================================="

# Set default cron schedule if not provided
CRON_SCHEDULE="${CRON_SCHEDULE:-*/1 * * * *}"

# Create the cron job string
CRON_JOB="$CRON_SCHEDULE pwsh -f /data/Update-Stacks.ps1"

# Remove any old cron entry for this job
# Filter out our job using grep -v and then update the crontab
( crontab -l 2>/dev/null | grep -vF '/data/Update-Stacks.ps1' ; echo "$CRON_JOB" ) | crontab -

# Start the cron daemon in the foreground with debugging level 8
crond -f -d 8