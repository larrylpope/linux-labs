#!/bin/bash
## backup.sh - Compress a target folder into a timestamped tar.gz archive
#
## Exit on any error
set -e

# === Configuration ===
SOURCE_DIR="${1:-$HOME/lab20_source}"		# Default source folder if not specified
BACKUP_DIR="${2:-$HOME/lab20_backups}"		# Default destination
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="${BACKUP_DIR}/$(basename "$SOURCE_DIR")_${TIMESTAMP}.tar.gz"
LOGFILE="${BACKUP_DIR}/backup.log"

# === ENSURE DIRECTORIES EXIST ===
mkdir -p "$BACKUP_DIR"

# === Perform backup ===
echo "[$(date)] Starting backup of ${SOURCE_DIR} ..." | tee -a "$LOGFILE"
tar -czf "$BACKUP_FILE" -C "$(dirname "$SOURCE_DIR")" "$(basename "$SOURCE_DIR")"
echo "[$(date)] Backup completed: ${BACKUP_FILE}" | tee -a "$LOGFILE"

# === Verify archive ===
if tar -tzf "$BACKUP_FILE" >/dev/null 2>&1; then
	echo "[$(date)] Verification successful." | tee -a "$LOGFILE"
else
	echo "[$(date)] ERROR: Archive verification failed." | tee -a "$LOGFILE"
	exit 1
fi
