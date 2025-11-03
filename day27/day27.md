# Day 27 - Fail2Ban Basics (Blocking Brute-Force Attempts)

## Key Commands
- `sudo apt install fail2ban` -> install Fail2Ban
- `sudo systemctl status fail2ban` -> check service status
- `sudo cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local` -> create local config
- `sudo fail2ban-client status` -> show active jails
- `sudo fail2ban-client status sshd` -> view SSH jail info
- `sudo fail2ban-client set sshd unbanip <IP>` -> Unban IP
- `sudo tail -f /var/log/fail2ban.log` -> monitor bands live

## Example SSH jail config
```ini
[sshd]
enabled     = true
port        = true
filter      = sshd
logpath     = /var/log/auth.log
maxretry    = 5
bantime     = 10m
findtime    = 10m
banaction   = ufw
```

## Notes
- Always test SSH access after enabling Fail2Ban + UFW.
- `maxretry`, `bantime`, and `findtime` control ban aggressiveness.
- Logs stored in `/var/log/fail2ban.log`.
- UFW integration ensures bans show as `f2b-sshd` rules.
