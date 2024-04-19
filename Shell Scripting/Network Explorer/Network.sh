#!/bin/bash

##############################
# Author: Abhinav
#
# Date: 10/2/24
#
# Description: This script provides network analysis details including network interface, routing table, active connections, and DNS server information.
#
# Version: v1
##############################

echo "Network Analysis Script"
echo "-----------------------"

echo -e "\nNetwork Interface Details:"
ip address show

echo -e "\nRouting Table Details:"
ip route show

echo -e "\nActive Connections Details:"
ss -tuln

echo -e "\nDNS Server Details:"
systemd-resolve --status | grep "DNS Servers"
