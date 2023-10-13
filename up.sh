#!/bin/bash

# Prompt for the new IP address
read -p "Enter the new IP address: " NEW_IP

# Prompt for the new hostname
read -p "Enter the new hostname: " NEW_HOSTNAME

# Update the IP address in ifcfg-eth0
sed -i "s/IPADDR=.*/IPADDR=$NEW_IP/" /etc/sysconfig/network-scripts/ifcfg-eth0

# Set the hostname
hostnamectl set-hostname $NEW_HOSTNAME

# Reboot the instance
reboot
