#!/bin/bash 
set -euo pipefail 

echo "Starting Network Diagnostics 🚀"

INTERFACE=$(route get default | grep interface | awk '{print $2}')
GATEWAY=$(route -n get default | grep gateway | awk '{print $2}')

# Device Connectivity 
echo "Checking device connectivity 🔌" 
ifconfig "$INTERFACE" | grep inet
ipconfig getifaddr "$INTERFACE"

# Local Network Layer and finding gateway 
echo "Checking Route Table and Local Network Layer 🔎" 
route -n get default 
netstat -nr | grep default 
ping -c 3 "$GATEWAY"

echo "Checking Internet Connection 🌎"
ping -c 4 8.8.8.8

echo "Checking DNS Resolution 🌐"
nslookup google.com
dig google.com +short 
host google.com

echo "Checking Application Layer ⚗️"
curl -I https://google.com


echo "Checking Port Connectivity 🚪"
lsof -i -P -n | head
echo "Diagnostics Complete ✅"