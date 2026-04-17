#!/bin/bash
DATE=$(date '+%Y-%m-%d %H:%M:%S')

if systemctl is-active --quiet nginx; then 
echo "[$DATE] OK: nginx is running"
curl -s http:localhost > /dev/null && echo "[$DATE] OK: nginx is responding to requests"
else
echo "[$DATE] FAIL: nginx is down - restarting..."
sudo systemctl restart nginx
echo "[$DATE] nginx restarted"
fi
