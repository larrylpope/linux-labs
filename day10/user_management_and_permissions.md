# User Management & Permissions Workflow

## 1. User and Group Administration
### Key Commands
- `adduser <name>` - create a new user interactively
- `userdel <name>` - remove a user
- `passwd <name>` -set or change password
- `id <name>` - view UID, GID, and group membership
- `groups <name>` - list groups
- `usermod -aG <group> <user>` - ad user to group
- `/etc/passwd`, `/etc/group` - store user and group definitions

### Typical Workflow
1. Create user accounts for staff or students.
2. Create shared groups for projects or departments.
3. Add relevant users to those groups.
4. Verify with `id` and `group`.

Example:
```bash
sudo adduser instructor
sudo groupadd library
sudo usermod -aG library instructor
id instructor
```

## 2. File Ownership and Permissions
### Key commands
- `ls -l` - list with permissions
- `chmod` - change permission bits
- `chown <user>:<group>` - change ownership
- `chgrp <group>` - change group
- `stat <file>` - detailed metadata

### Key Concepts
Each file has:
- Owner (user)
- Group
- Permission bits: read (r), write (w), execute (x)

Example:
```bash
chown instructor: library syllabus.txt
chmod 640 syllabus.txt
```

## 3. Special Permission Bits
Examples:
```bash
chmod 4755 script.sh        # SUID
chmod 2775 /srv/projects    # SGID
chmod 1777 /srv/shared      # Sticky
```

## 4. Privilege Escalation and Root Access
### Key commands
- `su -` - switch to root (requires root password)
- `sudo <command>` - run a single privileged command
- `sudo -i` - start root shell
- `visudo` - safely edit sudoers configuration

### Best Practices
- Never log in directly as root via SSH.
- Use non-root accounts with sudo privileges.
- Log and audit all sudo usage

Example sudoers entry:
```sql
%sudo ALL-(ALL:ALL) ALL
```

## 5. Remote Access Workflow
### Key commands
- `ssh user@hostname` - connect remotely
- `ssh-keygen` - generate SSH keys
- `~/.ssh/authorized_keys` - allow key-based login

### Best Practice Workflow
1. Connect as a non-root user.
2. Use `sudo` for administrative actions
3. Apply principle of least privilege.

## 6. Typical Administrative Workflow
Example: Provisioning a new faculty member's environment
```bash
sudo adduser faculty1
sudo groupadd research
sudo usermod -aG research faculty1
sudo mkdir -p /srv/research/data
sudo chown :research /srv/research/data
sudo chmod 2775 /srv/research/data      # SGID ensures group inheritence
```

## 7. Verification and Troubleshooting
- `ls -l` - verify file permissions
- `find /home -user <user>` - list all owned files
- `sudo tail -f /var/log/auth.log` - monitor authentication
- `sudo visudo -c` - check sudoers syntax
- `getent passwd` - list system users
- `getent group` - list system groups

## 8. Summary
A secure linux environment:
- Defines clear user and group boundaries
- Uses correct file ownership and permissions
- Leverages special bits where appropriate
- Employs `sudo` for controlled privilege escalation
- Uses SSH for authenticated remote access

