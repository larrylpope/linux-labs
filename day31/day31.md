# Day 31 - Install Apache & Serve a Static HTML File

## Steps
1. Installed Apache and enabled service.
2. Allowed UFW profile "Apache".
3. Replaced default 1index.html` with custom page.
4. Verified via `curl http://localhost` and browser access.

## Key Commands
- `sudo apt install apache2` -> install Apache server
- `sudo systemctl enable/start/status apache2` -> manage apache service
- `sudo ufw allow 'Apache'` -> allow port 80 traffic
- `curl http://localhost` -> verify web server response
- `sudo tail -f /var/log/apache2/access.log` -> monitor requests

## Verification
- Browser loads custom HTML
- Apache service active
- Firewall allows HTTP
- Logs show access entries
