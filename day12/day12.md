# Day 12 - Package Management Basics

## Key Commands
### Debian/Ubuntu
- `sudo apt update` - refresh package list
- `sudo apt install <pkg>` - install package
- `apt show <pkg>` - show package details
- `sudo apt remove <pkg>` - remove package
- `sudo apt autoremove` - clean unused dependencies

### RHEL/Fedora
- `sudo dnf install <pkg>` - install
- `dnf info <pkg>` - show info
- `sudo dnf remove <pkg>` - remove
- `sudo dnf autoremove` - clean unused packages

## Example Workflow
```bash
sudo apt update
sudo apt install -y htop
htop --version
sudo apt remove -y htop
sudo apt autoremove -y
```

## Notes
- Always update your repo list before installing new software
- Use `search` to find the exact package name.
- The `-y` flag automates confirmation prompts.
