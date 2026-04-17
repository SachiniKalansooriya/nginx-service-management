#!/bin/bash
DATE=$(date '+%Y-%m-%d %H:%M:%S')
LOG="logs/service-status.log"

mkdir -p logs

SERVICES=("nginx" "ssh" "cron")

echo "==================="
echo " Service Status Report"
echo " $DATE"
echo "==================="

for SERVICE in "${SERVICES[@]}"; do
if systemctl is-active --quiet $SERVICE; then 
echo "OK  $SERVICE is RUNNING"
echo "[$DATE] OK:$SERVICE is RUNNING" >> $LOG
else
echo "FAIL  $SERVICE is DOWN"
echo "[$DATE] FAIL: $SERVICE is DOWN" >> $LOG
fi
done

echo "================================="
echo "Log saved to: $LOG"
