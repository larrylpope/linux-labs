# Day 17 - Mounting and Persistent Filesystems

## Key Commands
- `mount` -> attach a filesystem to a directory
- `umount` -> detach a filesystem
- `lsblk -f` -> show block devices and filesystem types
- `blkid` -> display UUIDs and filesystem info
- `vim /etc/fstab` -> configure persistent mounts
- `mount -a` -> mount all entries from fstab

## Example: Loopback Mount
```bash
sudo dd if=/dev/zero of=/tmp/loopdisk.img bs=1M count=100
sudo mkfs.ext4 /tmp/loopdisk.img
sudo mkdir /mnt/loopdrive
sudo mount -o loop /tmp/loopdisk.img /mnt/loopdrive
df -hT | grep loopdrive
```

## Persistent Entry
```bash
/tmp/loopdisk.img /mnt/loopdrive ext4 loop,defaults 0 0
```

## Notes
- Always test `/etc/fstab` with `mount -a` before rebooting.
- Mount points must exist before mounting.
- Use UUIDs for reliability instead of device names (e.g., `/dev/sdb1`)
