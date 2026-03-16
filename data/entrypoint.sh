#!/bin/sh

# Display build version on startup
if [ -f /data/version.txt ]; then
    BUILD_VERSION=$(cat /data/version.txt)
    echo "=========================================="
    echo "  Whale Mate - Build: $BUILD_VERSION"
    echo "=========================================="
else
    echo "=========================================="
    echo "  Whale Mate - Build Version Unknown"
    echo "=========================================="
fi

# Set default cron schedule if not provided
CRON_SCHEDULE="${CRON_SCHEDULE:-*/1 * * * *}"

# Create the cron job string
CRON_JOB="$CRON_SCHEDULE pwsh -f /data/Update-Stacks.ps1"

# Remove any old cron entry for this job
# Filter out our job using grep -v and then update the crontab
( crontab -l 2>/dev/null | grep -vF '/data/Update-Stacks.ps1' ; echo "$CRON_JOB" ) | crontab -

# Start the cron daemon in the foreground with debugging level 8
crond -f -d 8