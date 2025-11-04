# Day 30 - Mini-Project: SSH Hardening & Security Verification

## Objective
Lock down SSH access on the VM to key-based authentication only, disable root login, and validate UFW + Fail2Ban integration.

## System Changes
| Category | Change | Command/File |
|-----------|---------|--------------|
| SSH | Disabled root login | `PermitRootLogin no` |
| SSH | Disabled password auth | `PasswordAuthentication no` |
| SSH | Limited logins to user larry | `AllowUsers larry` |
| SSH | Set MaxAuthTries 3 | `/etc/ssh/sshd_config` |
| Firewall | Limited SSH rate with UFW | `sudo ufw limit ssh` |
| Intrusion Prevention | Enabled Fail2Ban SSH jail | `/etc/fail2ban/jail.local` |

## Verification Steps
```bash
ssh larry@<server_ip>           # success (key)
ssh root@<server_ip>            # denied
ssh larry@<server_ip> -o PreferredAuthentications=password # denied
sudo ufw status verbose
sudo fail2ban-client status sshd
```

## Observations
- Root login disabled
- Password auth disabled
- Key-based auth functional
- UFW SSH rate-limit enabled
- Fail2Ban active

## Artifacts
- `ssh_hardening_before.txt` - Baseline state
- `ssh_hardening_after.txt` - Post-change state
