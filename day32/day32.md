# Day 32 - Apache Modules & Virtual Hosts

## Key Commands
- `sudo apache2ctl -M` -> list loaded modules
- `sudo a2enmod <module>` -> enable a module
- `sudo a2dismod <module>` -> disable a module
- `sudo apache2ctl configtest` -> validate syntax
- `sudo a2ensite <file>` -> enable virtual host
- `sudo a2dissite <file>` -> disable virtual host
- `sudo systemctl reload apache2` -> apply changes

## Virtual host setup
- `/var/www/site1/public_html/index.html`
- `/var/www/site2/public_html/index.html`
- `/etc/apache2/sites-available/site1.conf`
- `/etc/apache2/sites-available/site2.conf`

## Example Test
```bash
curl http://site1.local
curl http://site2.local
```

## Notes
- Virtual hosts allow multiple sites on one server
- Use `/etc/hosts` for local domain testing.
- Always run `apache2ctl configtest` before restart.
- Keep `mod_rewrite` enabled for CMS and app routing.
