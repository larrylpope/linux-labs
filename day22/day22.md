# Day 22 - DNS Lookups & Name Resolution

## Key Commands
- `nslookup google.com` -> simple lookup
- `nslookup -type=MX gmail.com` -> show MX records
- `dig example.com` -> detailed lookup
- `dig +short example.com` -> simplified output
- `dig @8.8.8.8 example.com` -> use specific server
- `host google.com` -> quick lookup
- `dig -x 8.8.8.8` -> reverse DNS

## Example Workflow
```bash
cat /etc/resolv.conf
nslookup -type=A gmail.com
nslookup -type=MX gmail.com
dig example.com -t NS
dig example.com -t TXT
host 8.8.8.8
```

## Notes
- `dig` is the most detailed and flexible.
- `/etc/resolve.conf` shows which DNS servers are used.
- Reverse lookups use PTR records.
- Always test both IP and DNS connectivity when troubleshooting.
