# Day 29 - File Integrity Tools (md5sum, sha256sum)

## Key Commands
- `md5sum file.txt` -> generate MD5 checksum
- `sha256sum file.txt` -> generate SHA-256 checksum
- `md5sum -c file.md5` -> verify MD5 checksum file
- `sha256sum -c file.sha256` -> verify SHA-256 checksum file
- `sha256sum *.txt > all.sha256` -> create checksum list for multiple files
- `sha256sum -c all.sha256` -> verify all checksums at once

## Example Workflow
```bash
echo "test" > file.txt
md5sum file.txt > file.md5
sha256sum file.txt > file.sha256
sha256sum -c file.sha256
```

## Notes
- MD5 is fast but no longer cryptographically secure; use SHA-256 for authenticity checks.
- Hash verification ensures files haven't been tampered or corrupted.
- Verification fails immediately if content changes.
- Many software downloads provide official `.sha256` files; always check these before installing.
