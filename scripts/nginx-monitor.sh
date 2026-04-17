#!/bin/bash
DATE=$(date '+%Y-%m-%d %H:%M:%S')
LOG="logs/nginx-monitor.log"

mkdir -p logs

if systemctl is-active --quiet nginx; then 
STATUS="RUNNING"
RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" http://localhost)
echo "[$DATE] OK: nginx is $STATUS - HTTP response code: $RESPONSE" >> $LOG
else
STATUS="DOWN"
echo "[$DATE] FAIL: nginx is $STATUS" >> $LOG 
fi

echo "[$DATE] Status:$STATUS"
cat $LOG 
