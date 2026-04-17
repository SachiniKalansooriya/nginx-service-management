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
Monitors nginx status and logs every check with timestamp and HTTP response code.# nginx Service Management

Automated Bash scripts for managing, monitoring, and maintaining nginx web server on Ubuntu Linux. Built as part of my DevOps engineering learning journey.

## Environment
- OS: Ubuntu 22.04 on WSL2
- Web server: nginx 1.24.0
- Shell: Bash

## Scripts

### 1. nginx-health-check.sh
Checks if nginx is running. If it is down it automatically restarts it without human intervention.

**Usage:**
```bash
./scripts/nginx-health-check.sh
```

**What it does:**
- Checks nginx status using systemctl
- If running: reports OK
- If down: automatically restarts nginx and reports action taken

### 2. nginx-monitor.sh
Monitors nginx status and logs every check with timestamp and HTTP response code.

**Usage:**
```bash
./scripts/nginx-monitor.sh
```

**What it does:**
- Checks if nginx is running
- Sends HTTP request and captures response code
- Logs results with timestamp to logs/nginx-monitor.log
- HTTP 200 means server is healthy

### 3. service-status.sh
Checks multiple Linux services at once and produces a status report.

**Usage:**
```bash
./scripts/service-status.sh
```

**What it does:**
- Loops through multiple services
- Reports OK or FAIL for each one
- Saves full report to logs/service-status.log

## systemctl Commands

| Command | What it does |
|---|---|
| sudo systemctl start nginx | Start nginx service |
| sudo systemctl stop nginx | Stop nginx service |
| sudo systemctl restart nginx | Restart nginx service |
| sudo systemctl status nginx | Check if nginx is running |
| sudo systemctl enable nginx | Auto start on boot |
| sudo systemctl disable nginx | Stop auto start on boot |
| sudo journalctl -u nginx -f | Watch nginx logs live |

## Process Management Commands

| Command | What it does |
|---|---|
| ps aux | List all running processes |
| ps aux grep nginx | Find specific process |
| htop | Live process monitor |
| kill 1234 | Kill process by PID |
| pkill nginx | Kill process by name |

## Monitoring Commands

| Command | What it does |
|---|---|
| curl http://localhost | Test if nginx responds |
| curl -I http://localhost | Check HTTP response headers |
| curl -s -o /dev/null -w "%{http_code}" http://localhost | Get HTTP status code only |

## Log Files
- logs/nginx-monitor.log - nginx monitoring history
- logs/service-status.log - service status report history

## Skills Demonstrated
- Linux service management with systemctl
- Bash scripting with variables, loops, and conditionals
- Automated service recovery and self-healing scripts
- HTTP response checking with curl
- Service monitoring and log management
- Git version control and GitHub```bash
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
