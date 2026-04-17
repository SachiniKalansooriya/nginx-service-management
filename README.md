# nginx Service Management

Bash scripts for managing and monitoring nginx web server on Ubuntu Linux.
Built as part of my DevOps learning journey.

## What this repo covers
- Installing and managing nginx using systemctl
- Automated health checking and self-healing scripts
- Real-time service monitoring with logging
- HTTP response code checking with curl

## Scripts

### nginx-health-check.sh
Checks if nginx is running. If it is down it automatically restarts it.
```bash
./scripts/nginx-health-check.sh
```

### nginx-monitor.sh
Monitors nginx status and logs every check with timestamp and HTTP response code.
```bash
./scripts/nginx-monitor.sh
```

## Commands I learned

| Command | What it does |
|---|---|
| sudo systemctl start nginx | Start nginx |
| sudo systemctl stop nginx | Stop nginx |
| sudo systemctl restart nginx | Restart nginx |
| sudo systemctl status nginx | Check if nginx is running |
| sudo journalctl -u nginx -f | Watch nginx logs live |
| curl http://localhost | Test if nginx responds |
| ps aux | List all running processes |
| htop | Live process monitor |

## Skills demonstrated
- Linux service management with systemctl
- Bash scripting with variables and conditionals
- Automated service recovery
- Log monitoring and HTTP status checking
- Git version control and GitHub

## Environment
- OS: Ubuntu 22.04 on WSL2
- Web server: nginx 1.24.0
- Shell: Bash
