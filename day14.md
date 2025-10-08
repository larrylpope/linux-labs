# Day 14 - Scheduling Tasks with Cron

## Jobs Configured
- Nightly backup at 2 AM -> `backup_files.sh`
- Log rotation every 6 hours -> `rotate_logs.sh`
- Temporary test job (every minute) for verification

## Key Concepts
- Cron syntax (`minute hour day month day-of-week`)
- Managing crontabs with `crontab -e`, `-l`, `-r`
- Redirecting output (`>> logfile 2>&1`)
- Verifying execution with `grep CRON /var/log/syslog`

## Reflection
Successfully automated maintenance tasks with cron. Gained understanding of job timing, output redirection, and troubleshooting via logs.
