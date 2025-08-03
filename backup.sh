#!/bin/bash

# Backup Script

# Source directory to backup
SOURCE_DIR="$HOME/Documents"

# Destination directory
BACKUP_DIR="$HOME/Backups"

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"


# Create a timestamped backup
BACKUP_FILE="$BACKUP_DIR/backup_$(date +%Y%m%d_%H%M%S).tar.gz"

# Create the tar archive
tar -czf "$BACKUP_FILE" "$SOURCE_DIR"

echo "Backup completed successfully!"
echo "File saved to: $BACKUP_FIlE"

