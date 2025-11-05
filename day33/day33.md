# Day 33 - Install Nginx & Compare with Apache

## Steps
1. Installed Nginx and verified service
2. Allowed HTTP through UFW.
3. Replaced default index with custom static page.
4. Compared architecture and management commands with Apache.

## Key Commands
- `sudo apt install nginx` -> install Nginx
- `sudo systemctl enable/start/status nginx` -> manage Nginx service
- `sudo ufw allow 'Nginx HTTP'` -> open port 80
- `sudo nginx -t` -> check configuration syntax
- `sudo systemctl reload nginx` -> apply configuration changes
- `curl http://localhost` -> verify web response

## Comparison Summary
- **Nginx** uses an event-driven model (efficient concurrency).
- **Apache** uses a process/thread model (flexible modules).
- Nginx excels at serving static files and acting as a reverse proxy.
- Apache remains strong for complex dynamic content.

## Logs
- `/var/log/nginx/access.log`
- `/var/log/nginx/error.log`

## Verification
- Browser shows "Hello from Nginx"
- UFW allows "Nginx HTTP"
- Syntax check passed
