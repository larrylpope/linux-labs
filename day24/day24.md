# Day 24 - Connectivity Testing with curl & wget

## Key Commands
- `curl https://example.com` -> fetch web content
- `curl -I <url>` -> show only response headers
- `curl -L <url>` -> follow redirects
- `curl -o <file> <url>` -> save output to file
- `curl -D <headers.txt> -o <body.html> <url>` -> save headers and body separately
- `wget <url>` -> download file
- `wget -c <url>` -> resume download
- `curl ifconfig.me` -> show your public IP
- `curl -s -w "%{http_code}" -o /dev/null <url>` -> output only HTTP status code

## Example Workflow
```bash
curl -I https://google.com
curl -L -o github.html http://github.com
wget https://example.com
curl ifconfig.me
```

## Notes
- `curl` is best for testing HTTP APIs.
- `wget` excels at mirroring or downloading files.
- Always use `-L` to follow redirects, and `-I` for headers only.
- Combine with `grep` for quick response filtering.
