# Day 26 - Intro to Firewalls with UFW

## Key Commands

- `sudo ufw status verbose` -> show firewall rules and defaults
- `sudo ufw enable/disable` -> turn firewall on/off
- `sudo ufw default deny/allow` -> set default policies
- `sudo ufw allow ssh/http/8080 -> allow specific services or ports
- `sudo ufw deny <port>` -> block traffic
- `sudo ufw status numbered` -> list rules with numbers
- `sudo ufw delete <number>` -> remove a rule
- `sudo ufw logging on` -> enable logging
- `tail -f /var/log/ufw.log` -> view real-time activity

## Typical Secure Defaults
```bash
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow ssh
sudo ufw allow http
sudo ufw enable
```

## Notes
- Always allow SSH before enabling UFW on remote systems.
- UFW is a safe frontend to `iptables`.
- Rules are evaluated top to bottom.
- Logs help verify traffic matches expected rules.
