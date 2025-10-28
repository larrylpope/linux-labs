# Day 16 - Disk Usage & Filesystem Overview

## Commands Learned
- `df -hT` -> show mounted filesystems with type and usage
- `lsblk` -> display block devices and mount hierarchy
- `lsblk -f` -> show filesystem type and labels
- `du -h` -> estimate directory or file size
- `du -sh` -> summarize total size
- `du -h --max-depth=1` -> show per-directory usage
- `sort -h` -> sort output by human-readable size


## Example Workflow
```bash
df -hT
lsblk -f
sudo du -h --max-depth=1 /var | sort -h
du -sh ~
```
