# Day 23 - Network Sockets with netstat and ss

## Key Commands
- `sudo netstat -tuln` -> list listening TCP/UDP ports
- `sudo netstat -tulnp` -> show listening ports + PIDs
- `sudo ss -lnt` -> list listening TCP sockets
- `sudo ss -lntp` -> TCP listeners with process info
- `sudo ss -tunp` -> all TCP/UDP connections
- `sudo ss state established` -> show only active connections

## Example Workflow
```bash
sudo ss -lntp
sudo netstat -tulnp
sudo ss -tunp | grep ESTAB

## Notes
- `ss` is the modern replacement for `netstat`.
- `-l` = listening only, `-n` = numeric, `t` = TCP, `u` = UDP, `p` = process.
- Use `sudo` for full process visibility.
- Useful for verifying service bindings (SSH, HTTP, MySQL, etc.). 
