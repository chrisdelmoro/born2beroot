#!/bin/bash

wall "\
Architecture:		$(uname -a)
CPU physical:		$(cat /proc/cpuinfo | grep -c "physical id")
vCPU:			$(cat /proc/cpuinfo | grep -c "processor")
Memory Usage:		$(free -m | grep Mem | awk '{printf "%d/%dMB (%.2f%%)", $3, $2, $3/$2*100}')
Disk Usage:		$(df -h --total | grep total | awk '{printf "%d/%dGB (%s)", $3*1000, $4, $5}')
CPU Load:		$(top -bn1 | awk 'NR==3 {printf "%.2f%%", $2 + $4}')
Last Boot:		$(who -b | awk '{printf "%s %s", $(NF-1), $(NF)}')
LVM Use:		$(lsblk | grep -q "lvm" && echo "yes" || echo "no")
Connections TCP:	$(ss -s | awk '$1 == "TCP:" {printf "%d established", $4}')
User LOG:		$(who | awk '{print $1}' | wc -l)
Network:		$(hostname -I | awk '{printf $1 " ("}' && ip link | awk '$1 == "link/ether" {printf "%s)\n", $2}')
Sudo:			$(cat /var/log/sudo/sudo.log | grep -c "COMMAND")
"
