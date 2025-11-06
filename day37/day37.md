# Day 37 - System Backups with rsync

## Key Concepts
- `rsync` efficiently synchronizes files between locations.
- Supports incremental updates and data compression.
- Commonly used for backups and mirroring directories.

## Commmands
- `rsync -av source/ backup/` -> local sync
- `rsync -av --delete source/ backup/` -> delete sync
- `rsync -avz source/ user@host:/path/` -> network sync
- `rsync -av --progress source/ backup/` -> progress display

## Example
```bash
rsync -av ~/linux-labs/day37/source ~/linux-labs/day37/backup
rsync -av --delete ~/linux-labs/day37/source ~/linux-labs/day37/backup/
```
## Verification
- Confirmed incremental copy after file change.
- Confirmed deletion of missing files when `--delete` used.
- Optional remote sync verified over SSH.

## Notes
- Always include trailing `/` in source path to copy contents, not the directory itself.
- Use `--dry-run` to preview operations safely.
- Combine with cron for automated daily backups.
