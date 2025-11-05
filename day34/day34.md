# Day 34 - Nginx Reverse Proxy

## Objective
Configure Nginx to forward incoming traffic to a backend web service (Python HTTP server).

## Steps
1. Started backend on port 5000:
```bash
python3 -m http.server 5000
```
2. Created `/etc/nginx/sites-available/reverse-proxy.conf`:
```nginx
location / {
    proxy_pass http://127.0.0.1:5000
    proxy_set_header Host $host;
    proxy_set_header X-Real-IP $remote_addr;
```
3. Enabled site, reloaded Nginx, and added `proxy.local` to `/etc/hosts`.
4. Verified access:
```bash
curl http://proxy.local
```
-> Returned backend response.
5. Stopped backend to confirm 502 Bad Gateway behavior.

## Key Commands
- `sudo nginx -t` -> test nginx configuration
- `sudo systemctl reload nginx` -> reload configuration
- `curl -I http://proxy.local` -> inspect headers
- `sudo tail -f /var/log/nginx/proxy_access.log` -> monitor proxy logs

## Notes
- Reverse proxy devouples clients from backend infrastructure.
- Headers like `X-Forwarded-For` preserve real client IPs.
- Adding `add_header` directives can help identify proxy behavior.
