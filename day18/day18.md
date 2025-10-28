# Day 18 - Archiving & Compression

## Key Commands
- `tar -cvf archive.tar files...` -> create uncompressed archive
- `tar -czvf archive.tar.gz files...` -> create gzip-compressed archive
- `tar -cjvf archive.tar.bz2 files...` -> create bzip2-compressed archive
- `tar -xvf archive.tar` -> extract archive
- `tar -xzvf archive.tar.gz` -> extract gzip archive
- `tar -xzvf archive.tar.bz2` -> extract bzip2 archive
- `gzip file` / `gunzip file.gz` -> compress or decompress a single file
- `tar -tf archive.tar` -> list contents
- `gzip -t archive.tar.gz` - verify gzip archive integrity

## Notes
- `tar` handles both archiving and compression
- `gzip` = fast, common; `bzip2` = slower, smaller.
- Always verify your archives with `-t` or checksum tools.
