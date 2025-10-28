# Day 19 - Symbolic LInks vs Hard Links

## Commands
- `ln file linkname` -> create a hard link
- `ln -s target linkname` -> create a symbolic link
- `ls -li` -> show inode numbers
- `readlink linkname` -> show target path of symlink
- `find . -samefile file` -> list all hard links to a file

## Notes
- **Hard links** share inodes -> true duplicates of data.
- **Symlinks** store a pathname -> break if target deleted
- **Hard links** can't cross filesystems or link to directories (normally).
- **Symlinks** can point anywhere (local or remote path).
- Prefer *relative symlinks* for portability.
