# Day 14 - Logging Basics (journalctl & /var/log)

## Key Commands
- `sudo journalctl` -> view logs
- `sudo journalctl -r` -> newest first
- `sudo journalctl -b` -> logs since last boot
- `sudo journalctl -u <service>` -> by service
- `sudo journalctl -p 3` -> show errors only
- `sudo journalctl -f` -> follow logs
- `sudo less /var/log/syslog` -> system log
- `sudo less /var/log/auth.log` -> auth log

## Key Concepts
- **/var/log** -> text-based log files managed by rsyslog/syslog-ng.
- **journalctl** -> systemd's binary log viewer.
- Logs can be **persistent** (stored in /var/log/journal) or **volatile** (in memory).
