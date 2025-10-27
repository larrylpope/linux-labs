# Day 9 User Switching, Sudo, and SSH

## Key Commands
- `whoami` -> show current user
- `su <user>` -> switch user (needs target password)
- `sudo <cmd>` -> run command as root
- `sudo -i` -> start root shell
- `sudo visudo` -> edit sudoers file safely
- `ssh user@host` -> connect remotely
- `exit` -> end session

## Notes
- `root` is omnipotent; daily work should use non-root user.
- `sudo` enables least privilege and logs administrative actions.
- SSH logins should use normal users, never direct root logins. 
