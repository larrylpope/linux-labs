# Basic Linux Networking Cheat Sheet

## Interface Management

- `ip addr show` or `ip a` - Display all network interfaces and IPs
- `ip link show` - Show link-layer info (interface names, states)
- `ifconfig` - Legacy interface tool
- `ip addr add 192.168.1.2250/24 dev eth0` - Temporarily assign IP to interface
- `ip addr del 192.168.1.250/24 dev eth0` - Remove temporary IP
- `ip link set eth0 up/down` - Enable or disable interface

---

## DNS and Name Resolution

- `cat /etc/resolv.conf` - View configured DNS servers
- `nslookup example.com` - Simple DNS query
- `dig example.com` - Detailed DNS query
- `dig +short example.com` - Simplified DNS output
- `host example.com` - Quick lookup (good for scripts)
- `dig -x 8.8.8.8` - Reverse DNS lookup
- `nslookup -type=MX gmail.com` - Query for MX (mail_ records

---

## Connectivity & HTTP Testing

- `ping -c 4 google.com` - Test connectivity (ICMP_
- `traceroute google.com` - Show route to a host
- `curl https://example.com` - Fetch page or API output
- `curl -I https://example.com` - Headers only
- `curl -L http://example.com` - Follow redirects
- `curl -s -o /dev/null -w "%{http_code}" https://example.com` - Check HTTP status
- `wget https://example.com/file.zip` - Download file
- `wget -c <url>` - Resume interrupted download
- `curl ifconfig.me` - Show your public IP

---

## Socket and Port Inspection

- `sudo ss -lntp` - Show listening TCP ports + process
- `sudo ss -ludp` - Show listening UDP sockets
- `sudo ss -tunp` - All TCP/UDP connections
- `sudo netstat -tuln` - Legacy view of listening ports
- `sudo netsat -tulnp` - Include PID/program name
- `sudo ss state established` - Show active connections

---

## Routing & Gateway Info

- `ip route show` - Display routing table
- `ip route add default via 192.168.1.1` - Add a default gateway
- `traceroute -n 8.8.8.8` - Trace hops without DNS lookup
- `ping -I eth0 google.com` - Test via specific interface

---

## Troubleshooting Tips

- Use `ping` and `traceroute` to isolate connectivity issues.
- Use `dig` to confirm DNS functionality.
- Use `ss -lntp` or `netstat -tulnp` to verify which services are listening.
- Check `/etc/resolv.conf` if DNS fails.
- Always test with both hostname *and* IP (e.g., `ping google.com` vs `ping 8.8.8.8`).
- For HTTPS API issues, run `curl -v` to see the full negotiation.

---

## Common Network Files

- `/etc/hosts` - Static hostname-to-IP mappings
- `/etc/resolv.conf` - DNS resolver configuration
- `/etc/network/interfaces` - Debian-based static network config
- `/etc/sysconfig/network-scripts/` - RHEL/CentOS network configs

---

## Diagnostic Sequence (Quick Reference)

```bash
ip a
ip route show
ping -c 4 8.8.8.8
ping -c 4 google.com
dig google.com
sudo ss -lntp
curl -I https://example.com
```
