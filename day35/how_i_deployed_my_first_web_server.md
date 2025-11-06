# How I Deployed My First Web Server

## 1. Overview
This project involved deploying a fully functional web-server environment on a Linux VM, securing it, and serving both static and proxied content.

**Stack**
- Ubuntu Server (22.04 LTS)  
- Apache HTTP Server 2.4 (for Week 7 labs 31–32)  
- Nginx 1.18 (as reverse proxy, Day 33–34)  
- Firewall: UFW  
- Intrusion prevention: Fail2Ban  
- SSH hardened for key-only authentication  

---

## 2. System Environment
| Component | Description |
|------------|-------------|
| VM Host | Mini PC (4 CPU / 16 GB RAM) |
| OS | Ubuntu Server 22.04 |
| Network | Static IP 192.168.x.x |
| Firewall | UFW deny incoming / allow outgoing |
| User | `larry` with sudo access |

---

## 3. Apache Deployment
1. Installed Apache:
    ```bash
    sudo apt install apache2
    ```
2. Allowed HTTP traffic:
    ```bash
    sudo ufw allow 'Apache'
    ```
3. Created custom index:
    ```bash
    echo "<h1>Hello from Apache</h1>" | sudo tee /var/www/html/index.html
    ```
4. Enabled modules and virtual hosts (Day 32):
    ```bash
    sudo a2enmod rewrite
    sudo a2ensite site1.conf site2.conf
    ```

---

## 4. Nginx Deployment & Reverse Proxy
1. Installed Nginx:
    ```bash
    sudo apt install nginx
    sudo ufw allow 'Nginx HTTP'
    ```
2. Served static page:
    ```bash
    echo "<h1>Hello from Nginx</h1>" | sudo tee /var/www/html/index.html
    ```
3. Configured reverse proxy to backend (Python HTTP server on port 5000):
    ```nginx
    server {
      listen 80;
      server_name proxy.local;
      location / {
        proxy_pass http://127.0.0.1:5000;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        add_header X-Proxy "Served by Nginx Reverse Proxy";
      }
    }
    ```

---

## 5. Security Configuration
| Layer | Tool | Configuration |
|--------|------|---------------|
| Firewall | UFW | Default deny incoming; allow Apache/Nginx |
| Intrusion prevention | Fail2Ban | `[sshd] enabled = true; bantime = 10m; banaction = ufw` |
| Authentication | SSH | `PermitRootLogin no`, `PasswordAuthentication no`, key-based auth |
| System updates | APT | Regular patching via `sudo apt update && sudo apt upgrade` |

---

## 6. Verification Steps
- Accessed both Apache and Nginx pages via browser and `curl`.  
- Tested reverse proxy path to backend (`502 Bad Gateway` when stopped → confirmed proxy works).  
- Confirmed firewall rules and Fail2Ban activity:
    ```bash
    sudo ufw status verbose
    sudo fail2ban-client status sshd
    ```

---

## 7. Lessons Learned
- Apache is module-rich and ideal for content management systems.  
- Nginx is lightweight and superb as a reverse proxy.  
- Security should be layered (UFW + Fail2Ban + SSH hardening).  
- Always test configurations with `configtest` or `nginx -t` before reload.

---

## 8. Sanitized Config Samples
**Apache Virtual Host – `/etc/apache2/sites-available/site1.conf`:**
```apache
<VirtualHost *:80>
  ServerName site1.local
  DocumentRoot /var/www/site1/public_html
</VirtualHost>
```

**Nginx Reverse Proxy - `/etc/nginx/sites-avialable/reverse-proxy.conf`:**
```nginx
server {
  listen 80
  server_name proxy.local;
  location / {
    proxy_pass http://127.0.0.1:5000;
  }
}

## 9. Repository Artifacts
| File | Description |
|------|-------------|
| `day31/day31.md` | Install Apache setup |
| `day32/day32.md` | Modules + VHosts |
| `day33/day33.md` | Nginx overview |
| `day34/day34.md` | Reverse proxy config |
| `day35/how_i_deployed_my_first_web_server.md | Final summary report |
