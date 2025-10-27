# Day 11 - Process Monitoring & Control

## Key Commands
- `ps aux` -> list all processes
- `ps -ef --forest` -> show process tree
- `top` / `htop` -> live process monitor
- `jobs`, `bg`, `fg` -> manage shell background jobs
- `kill <PID>` / `killall <name>` -> terminate processes
- `nice`, `renice` -> adjust CPU priority

## Example Workflow
```bash
sleep 120 &
jobs
ps aux | grep sleep
kill %1
```
## Notes
- Every process has a unique PID.
- Background jobs let you multitask in the same shell.
- `top` and `htop` are critical for identifying heavy resource consumers.
- Use `nice`/`renice` to tune CPU scheduling without terminating tasks.
