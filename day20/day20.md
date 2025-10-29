# Day 20 - Mini-Project: Backup Script

## Overview
This Bash script compresses a target directory into a timestamped `tar.gz` archive and verifies integrity.

## Usage
```bash
./backup.sh [source_directory] [destination_directory]

## Features
- Timestamped `tar.gz` archives
- Verification step using `tar -tzf`
- Logging to `backup.log`
- Configurable source and destination
