[![GitHub Repo stars](https://img.shields.io/github/stars/nopenix/whale-mate)](https://github.com/NopeNix/Whale-Mate)
[![Build and Push to Docker Hub](https://github.com/NopeNix/whale-mate/actions/workflows/Build%20and%20Push%20to%20Docker%20Hub.yml/badge.svg?branch=main)](https://github.com/NopeNix/whale-mate/actions/workflows/Build%20and%20Push%20to%20Docker%20Hub.yml)
[![Dev Build](https://github.com/NopeNix/whale-mate/actions/workflows/Build%20and%20Push%20to%20Docker%20Hub.yml/badge.svg?branch=dev)](https://github.com/NopeNix/whale-mate/actions/workflows/Build%20and%20Push%20to%20Docker%20Hub.yml)
[![Docker Pulls](https://img.shields.io/docker/pulls/nopenix/whale-mate)](https://hub.docker.com/r/nopenix/whale-mate)


# Whale Mate - Automated Docker Stack Manager & Backup Solution

**Whale Mate** is a comprehensive management tool for your Docker stacks. Originally started as a simple container updater, it has evolved into a full-featured solution for backing up, restoring, and managing your Portainer stacks and Docker Compose files.

**MINIMUM REQUIREMENTS:**
- Portainer minimum Version 2.30.0 (optional - only needed for Portainer integration)
- Portainer Business Edition [get a free max 3 node license for non commercial here](https://www.portainer.io/take-3)

## Screenshots

<table>
  <tr>
    <td align="center">
      <a href="./img/01%20Portainer%20Stacks.png" target="_blank">
        <img src="./img/01%20Portainer%20Stacks.png" width="250" alt="Portainer Stacks">
      </a>
      <br>Portainer Stacks
    </td>
    <td align="center">
      <a href="./img/02%20Docker%20Compose%20Stacks.png" target="_blank">
        <img src="./img/02%20Docker%20Compose%20Stacks.png" width="250" alt="Docker Compose Stacks">
      </a>
      <br>Docker Compose Stacks
    </td>
    <td align="center">
      <a href="./img/03%20Update%20Logs.png" target="_blank">
        <img src="./img/03%20Update%20Logs.png" width="250" alt="Update Logs">
      </a>
      <br>Update Logs
    </td>
  </tr>
  <tr>
    <td align="center">
      <a href="./img/04%20Versioning%20Overview.png" target="_blank">
        <img src="./img/04%20Versioning%20Overview.png" width="250" alt="Versioning Overview">
      </a>
      <br>Versioning Overview
    </td>
    <td align="center">
      <a href="./img/05%20Versioning%20Stack%20Selected.png" target="_blank">
        <img src="./img/05%20Versioning%20Stack%20Selected.png" width="250" alt="Versioning Stack Selected">
      </a>
      <br>Versioning Stack Selected
    </td>
    <td align="center">
      <a href="./img/06%20Versioning%20Stack%20selected%20stackfile%20preview.png" target="_blank">
        <img src="./img/06%20Versioning%20Stack%20selected%20stackfile%20preview.png" width="250" alt="Stackfile Preview">
      </a>
      <br>Stackfile Preview
    </td>
  </tr>
  <tr>
    <td align="center">
      <a href="./img/07%20Versioning%20Stack%20selected%20confirm%20restore%20dialog.png" target="_blank">
        <img src="./img/07%20Versioning%20Stack%20selected%20confirm%20restore%20dialog.png" width="250" alt="Restore Dialog">
      </a>
      <br>Restore Dialog
    </td>
    <td align="center">
      <a href="./img/08%20Settings%20upper.png" target="_blank">
        <img src="./img/08%20Settings%20upper.png" width="250" alt="Settings Upper">
      </a>
      <br>Settings (Upper)
    </td>
    <td align="center">
      <a href="./img/09%20Settings%20lower.png" target="_blank">
        <img src="./img/09%20Settings%20lower.png" width="250" alt="Settings Lower">
      </a>
      <br>Settings (Lower)
    </td>
  </tr>
</table>

*Click on any image to view it in full size*

## Introduction

Whale Mate is a comprehensive Docker stack management solution that goes far beyond simple container updates. It provides:

- **Automatic Container Updates**: Keep your containers up-to-date based on flexible policies
- **Version History & Backups**: Automatic and manual backups of your compose files with full version control
- **Restore Capability**: Revert to any previous backup version with one click
- **Visual Web Dashboard**: Beautiful dark-mode UI to monitor and manage all your stacks
- **NTFY Notifications**: Get push notifications about updates, backups, and restores
- **Scheduled & Manual Updates**: CRON-based automatic updates or trigger updates on-demand
- **Full Activity Logs**: Complete audit trail of all actions performed

## Features

### Stack Management
- **Portainer Integration**: Full management of your Portainer stacks (Standalone & Swarm)
- **Docker Compose Support**: Manage standalone docker-compose.yml files
- **Visual Dashboard**: Beautiful dark-mode UI with table and card views
- **Real-time Status**: See update status, backup status, and stack health at a glance

### Backup & Versioning
- **Automatic Backups**: Stacks are automatically backed up when changes are detected
- **Manual Backups**: Trigger backups on-demand from the web UI
- **Version History**: Full timeline of all backups with timestamps
- **Restore Functionality**: Revert any stack to a previous backup version
- **Delete Versions**: Clean up old versions individually or in bulk

### Update Automation
- **Flexible Update Policies**:
  - `AutoUpdate`: Automatically update the stack when images change
  - `NTFYOnly`: Only send notification about available updates
  - `DoNotUpdate`: Never update this stack (monitor only)
- **CRON Scheduling**: Runs updates on your configurable schedule
- **Manual Trigger**: One-click manual update button for instant updates
- **Per-Stack Control**: Override default policy for individual stacks

### Notifications & Logging
- **NTFY Integration**: Push notifications for updates, backups, and restores
- **Full Activity Logs**: Complete audit trail with search and filtering
- **Stack-specific Logs**: Filter logs by specific stack name
- **Export Logs**: Download logs as text files for analysis

## Prerequisites

Before using Whale Mate, you'll need:

1. Docker and Docker Compose installed
2. (Optional) A running Portainer instance **minimum Version 2.30.0** - only needed for Portainer integration
3. (Optional) An NTFY server if you want push notifications

**Note:** Whale Mate can run in multiple modes:
- **Full Mode**: Portainer integration + Docker Compose + Auto-update + Backup + Versioning
- **Docker Compose Only**: Just monitor and update docker-compose stacks (requires docker.sock mount)
- **Dashboard Only**: View logs and manage backups without auto-updates

## Installation

1. Create a `docker-compose.yml` file with the following content:

```yaml
version: '3'
services:
  updateportainerstacks:
    image: nopenix/whale-mate:latest
    ports:
      - 8080:8080 # Exposes HTTP 
    restart: unless-stopped
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock # only needed for docker copmpose
      - /:/mnt/rootfs/:ro # only needed for docker compose and only if you want the update feature
      - db:/data/db
    environment:
      # Auto Update Settings
      AutoUpdateDefaultMode: AutoUpdate # Can be: NTFYOnly, AutoUpdate, DoNotUpdate
      CRON_SCHEDULE: "*/30 * * * *" # CRON String. Sets when the Programm is triggered in this example every 30min
      # Portainer Settings
      PortainerBaseAddress: https://portainer.yourdomain.com # just the base address of your portainer
      PortainerAPIToken: your-portainer-api-token # Portainer API Token goes here
      # NTFY Settings
      NTFYEnabled: $true # Can be $true or $false
      NTFYTopicURL: https://ntfy.yourdomain.com/Portainer-Updates
      NTFYToken: # Can also be left empty if there is none
volumes:
  db:
```

2. Customize the environment variables (Optional):
   - `PortainerBaseAddress`: Your Portainer instance URL
   - `PortainerAPIToken`: Generate this in Portainer (In Portainer: My Account > Access Tokens)
   - Adjust `CRON_SCHEDULE` for your needs (default every 5 mins)
   - Configure NTFY settings if desired

3. Start the container:
```bash
docker-compose up -d
```

## Architecture

Whale Mate runs three background services via Supervisord:

1. **Updater Service**: Runs the update check script on your CRON schedule
2. **Web Dashboard Service**: Serves the web UI and API on port 8080
3. **Auto-Backup Service**: Continuously monitors for stack changes and creates automatic backups

This ensures that:
- Updates happen on schedule without manual intervention
- The web interface is always available
- Backups are created automatically when stack configurations change

## Configuration Options

### Environment Variables

| Variable | Description | Default | Required |
|----------|-------------|---------|----------|
| `AutoUpdateDefaultMode` | Default update policy (`AutoUpdate`, `NTFYOnly`, `DoNotUpdate`) | `AutoUpdate` | No |
| `CRON_SCHEDULE` | CRON expression for update schedule | `*/5 * * * *` | No |
| `PortainerBaseAddress` | Base URL of your Portainer instance | - | No |
| `PortainerAPIToken` | API token for Portainer | - | No |
| `NTFYEnabled` | Enable/disable NTFY notifications | `$false` | No |
| `NTFYTopicURL` | NTFY topic URL | - | Only if NTFY enabled |
| `NTFYToken` | NTFY access token | - | Only if your NTFY requires auth |

### Per-Stack Configuration

You can control updating behavior for individual stacks by adding comments to your stack files:

```yaml
#UpdatePolicy=AutoUpdate  # Will automatically update this stack
#UpdatePolicy=NTFYOnly    # Only notify about updates, don't auto-update
#UpdatePolicy=DoNotUpdate # Never update this stack
```

## Usage

1. After starting the container, access the web interface at `http://your-host:8080`
2. The dashboard shows:
   - All Portainer stacks with their update status
   - All Docker Compose stacks
3. Navigate between views:
   - **Stacks**: Monitor status, trigger updates, view backup status
   - **Update Logs**: Search and filter activity logs
   - **Versioning**: View backup history, restore previous versions, create manual backups

### Quick Actions (Portainer Stacks)
From the Stacks page you can:
- 👁 **View Versions**: See complete backup history
- 📜 **View Logs**: Filter logs for specific stack
- 💾 **Backup**: Manually backup compose file
- 📤 **Update**: Trigger instant update (pull latest images)
- 🗑 **Clear**: Delete all version history

## Update Policies

Whale Mate supports three update policies:

1. **AutoUpdate**: Automatically pull latest images and update the stack when CRON triggers
2. **NTFYOnly**: Check for updates but only send notification (don't auto-update)
3. **DoNotUpdate**: Skip this stack completely (monitor only)

The default policy can be set via `AutoUpdateDefaultMode` environment variable, and can be overridden per-stack with the `#UpdatePolicy` comment.

### Manual Updates

In addition to scheduled automatic updates, you can trigger instant updates manually:
- Click the **cloud-upload icon** (📤) in the Actions column on any Portainer stack
- Confirmation dialog shows before triggering
- Status refreshes automatically after the update completes

## Notifications

When configured with NTFY, you'll receive notifications about:
- Available updates for outdated stacks
- Successful automatic updates
- Successful manual updates
- Automatic backups created
- Restore operations completed

## Version History

Whale Mate automatically backs up your Portainer stack configurations when changes are detected. This feature allows you to:

- **Automatic Backups**: Stacks are automatically backed up when content changes are detected
- **Manual Backups**: You can manually trigger a backup anytime via the web UI
- **Version Timeline**: View the complete history of backups for each stack

### How it works:

1. The auto-backup service checks every minute for changes in your Portainer stacks
2. Changes are detected by comparing SHA-256 hashes and timestamps
3. When a change is detected, a timestamped backup is created in `/data/versions/<stack-id>/`
4. You can view all backups in the Versioning section of the web UI

### Accessing Version History:

1. Open the web interface at `http://your-host:8080`
2. Click on "Versioning" in the navigation
3. On the landing page, you'll see the latest backups across all stacks
4. Select a specific stack to view its complete version history
5. Click "Backup Now" to manually create a backup
6. Click "View" on any version to see its content
7. Click "Restore" to restore a previous backup (requires confirmation)

### Restore Feature

The restore feature allows you to revert a Portainer stack to a previous backup version:

- **Restore from Latest Backups**: On the landing page, click "Restore" next to any backup
- **Restore from Version Timeline**: Select a stack, then click "Restore" on any version
- **Confirmation Required**: Every restore requires explicit confirmation to prevent accidental restores

## ⚠️ Security Considerations

**Important:** This section applies if you're using Portainer integration.

### Web Interface Security

The Whale Mate web interface currently does **not** include built-in authentication. This means:

- **Plain HTTP**: By default, the interface runs on plain HTTP (not HTTPS)
- **No Access Control**: Anyone with network access can view and manage stacks
- **Credentials in Environment Variables**: Portainer API tokens are stored as environment variables, which may be visible in:
  - Process environment listings
  - Docker container inspect
  - Log files (if accidentally logged)

### Recommended Security Measures

To secure your deployment:

1. **Use a Reverse Proxy with Authentication**:
   - Place Whale Mate behind a reverse proxy (like nginx, traefik, or Caddy)
   - Configure HTTP Basic Auth or OAuth2/OIDC authentication at the proxy level
   - Enable HTTPS at the proxy

2. **Network Isolation**:
   - Run Whale Mate in an isolated network/VPC
   - Use firewall rules to restrict access
   - Consider using Docker network isolation

3. **Environment Variable Protection**:
   - Use Docker secrets or a secrets manager for the API token
   - Avoid logging environment variables
   - Use read-only container deployments where possible

4. **HTTPS Configuration**:
   - Configure a TLS certificate if exposing Whale Mate externally
   - Consider using a VPN tunnel instead of direct exposure

**Disclaimer**: Running this software without additional authentication is at your own risk. Always review your deployment configuration and understand the security implications.

## Troubleshooting

1. **Can't access Portainer API**:
   - Verify `PortainerBaseAddress` is correct
   - Check API token has proper permissions
   - Ensure Portainer is accessible from the Whale Mate container
   - Portainer API requires Business Edition for stacks endpoint

2. **Stacks not appearing**:
   - For Portainer stacks, ensure they're not Swarm stacks (only Standalone stacks supported)
   - For Docker Compose, ensure files have proper permissions and docker.sock is mounted

3. **Backups not being created**:
   - Verify Portainer credentials are configured
   - Check that the `/data/versions` directory is writable

4. **Manual update fails**:
   - Ensure stack is Active (not Inactive)
   - Check Portainer has available resources to perform the update

5. **Check logs**:
```bash
docker-compose logs -f
```

## FAQ

**Q: How often does it check for updates?**  
A: By default every 5 minutes (configurable via CRON_SCHEDULE)

**Q: Can I exclude specific stacks from updates?**  
A: Yes, add `#UpdatePolicy=DoNotUpdate` to your stack file

**Q: Does it work with Swarm mode?**  
A: Portainer stacks are supported in Swarm mode. Docker Compose support is for standalone stacks.

**Q: What gets backed up?**  
A: Only the compose file configuration is backed up (the YAML file). Volume data is not included.

**Q: Can I trigger updates manually without waiting for CRON?**  
A: Yes! Click the cloud-upload icon (📤) on any Portainer stack to trigger an instant update.

**Q: Does Whale Mate work without Portainer?**  
A: Yes, you can use it for Docker Compose stacks only, or even just as a log viewer and dashboard.

**Q: How do I restore a stack to a previous version?**  
A: Go to Versioning > Select your stack > Click Restore on any backup version > Confirm.

## Contributing

Contributions are welcome! Please open issues or PRs on GitHub.

## License

MIT
