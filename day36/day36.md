# Day 36 - Cron Basics

## Key Concepts
- Cron schedules recurring tasks.
- Uses user crontab or `/etc/crontab` (system-wide).
- Requires absolute paths.

## Commands
- `crontab -e` -> edit crontab
- `crontab -l` -> list jobs
- `systemctl status cron` -> check service
- `grep CRON /var/log/syslog` -> view cron logs

## Examples
Log timestamp every minute:
```cron
* * * * * echo "Cron test: $(date)" >> ~/cron_test.log
```
Daily cleanup at 01:00:
```cron
0 1 * * * find /home/larry/cron_tmp -type f -mtime +7 -delete
```

## Verification
- Log entries appeared in `~/cron_test.log`
- `systemctl status cron` confirmed running
- Verified syslog for cron activity
