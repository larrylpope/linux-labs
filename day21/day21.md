# Day 21 - Interfaces & IP Configuration

## Key Commands
- `ip addr show` -> view IP addresses and interface states
- `ip -brief address` -> concise interface list
- `ifconfig` -> legacy tool for interface management
- `ping -c 4 <host>` -> test connectivity
- `traceroute <host>` -> display network path
- `ip route show` -> view routing table
- `ip addr add/del` -> temporarily assign/remove IPs

## Example Workflow
```bash
ip a
ip route show
sudo ip addr add 192.168.1.250/24 dev eth0
ping -c 4 google.com
traceroute 8.8.8.8
sudo ip addr del 192.168.1.25./24 dev eth0
```

## Notes
- `ip` is the modern replacement for `ifconfig`.
- `ping` and `traceroute` are fundamental diagnostic tools.
- Temporary IP assignments vanish after reboot.
- Use `ip route show` to identify default gateway
