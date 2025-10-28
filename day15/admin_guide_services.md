# How I Install & Manage Services

## 1. Package Installation
### Using apt (Debian/Ubuntu)
```bash
sudo apt update
sudo apt install <package-name>
sudo apt remove <package-name>
sudo apt autoremove
```

### Using dnf/yum (Fedora/RHEL)
```bash
sudo dnf install <package-name>
sudo dnf remove <package-name>
```

### Verification
```bash
which <binary>
<binary> --version
```

## 2. Service Management (systemctl)
- `systemctl status <service` - View active state & logs
- `sudo systemctl start <service>` - Launch service immediately
- `sudo systemctl stop <service>` - Halt service
- `sudo systemctl restart <service>` - Restart to apply config changes
- `sudo systemctl enable <service>` - Autostart
- `sudo systemctl disable <service>` - Prevent autostart
- `sudo systemctl reload <service>` - Re-read configs (without stopping the service)

### Example:
```bash
sudo apt install apache2
sudo systemctl enable apache2
sudo systemctl start apache2
systemctl status apache2
```

## 3. Verifying Operation
```bash
sudo systemctl status apache2
sudo ss -tlnp | grep 80
curl -I http://localhost
```

## 4. Troubleshooting via Logs
```bash
sudo journalctl -u apache2
sudo journalctl -p 3 -b     # errors only
sudo tail -n 50 /var/log/syslog
```
### Common checks:
- Config syntax: `apachectl configtest`
- Permissions on config directories (`/etc/apache2/`, `/var/www/html/`)

## 5. Cleaning Up & Updates
```bash
sudo apt update && sudo apt upgrade
sudo apt autoremove
sudo journalctl --vacuum-time=7d
```

## 6. Security & Good Practices
- Use `sudo systemctl reload` after config edits instead of full restarts when possible.
- Keep services minimal; disable what you don't need.
- Review enabled services:
```bash
systemctl list-unit-files --type=service --state=enabled
```
- Rotate and archive logs regularly.

## 7. Reference Checklist
1. Install package
2. Enable and start service
3. Verify process & port
4. Check logs for errors
5. Document changes in `/usr/local/docs/ops_log.md`

## 8. Example Session
```bash
sudo apt install vsftpd
sudo systemctl enable vsftpd
sudo systemctl start vsftpd
systemctl status vsftpd
sudo journalctl -u vsftpd -f
```
