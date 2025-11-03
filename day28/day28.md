# Day 28 – SSH Hardening (Disable Root Login & Enable Key-Based Auth)

## Key Steps
1. Create non-root sudo user  
2. Generate SSH key pair (`ed25519`)  
3. Copy public key to server (`ssh-copy-id`)  
4. Edit `/etc/ssh/sshd_config`:
   ```ini
   PermitRootLogin no
   PasswordAuthentication no
   PubkeyAuthentication yes
```
5. Restart SSH service and verify access

## Key Commands
- `ssh-keygen -t ed25519 -C "user@server"` -> create key pair
- `ssh-copy-id user@server` -> copy public key to server
- `sudo vim /etc/ssh/sshd_config` -> edit SSH config
- `sudo systemctl restart ssh` -> apply changes
- `ssh user@server` -> test key login
- `ssh root@server` -> verify root is blocked

## Notes
- Keep an open session when testing SSH changes.
- Use keys for automation and security; disable passwords completely.
- Combine with Fail2Ban and UFW for strong SSH protection.
