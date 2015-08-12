#!/bin/bash
apt-get -y update

# install Core Apps
apt-get -y install gdal-bin htop ossim-core python-gdal python-pyproj imagemagick 

#IPTABLES - Allow only SSH		
IPTABLES=/sbin/iptables		
		
ALLOWED_RANGE="73.163.143.0/24"		
# Flushing all rules		
$IPTABLES -F		
$IPTABLES -X		
# Setting default filter policy		
$IPTABLES -P INPUT DROP		
$IPTABLES -P OUTPUT DROP		
$IPTABLES -P FORWARD DROP		
# Allow unlimited traffic on loopback		
$IPTABLES -A INPUT -i lo -j ACCEPT		
$IPTABLES -A OUTPUT -o lo -j ACCEPT		
 		
# Allow incoming ssh only		
$IPTABLES  -A INPUT -i eth0 -p tcp -s $ALLOWED_RANGE --dport 22 -m state --state NEW,ESTABLISHED -j ACCEPT		
$IPTABLES  -A OUTPUT -o eth0 -p tcp --sport 22 -m state --state ESTABLISHED -j ACCEPT		
# make sure nothing comes or goes out of this box		
$IPTABLES -A INPUT -j DROP		
$IPTABLES -A OUTPUT -j DROP 		