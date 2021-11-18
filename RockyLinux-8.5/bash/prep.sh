#!/bin/bash

set -e
set -x

### Update
echo "Starting update of the system!"
yum -y update
yum -y upgrade

echo "Starting cleanup job..."
### Clean the /tmp directories. ###
echo '> Cleaning the /tmp directories ...'
rm -rf /tmp/*
rm -rf /var/tmp/*
rm -rf /var/log/rhsm/*
rm -rf /var/cache/dnf/*

### Sets the hostname to localhost. ###
echo '> Setting the hostname to localhost ...'
cat /dev/null > /etc/hostname
hostnamectl set-hostname localhost

### Clean the dnf cache. ###
echo '> Cleaning the  cache ...'
dnf clean all

### Clean the machine-id. ###
echo '> Cleaning the machine-id ...'
truncate -s 0 /etc/machine-id
rm /var/lib/dbus/machine-id
ln -s /etc/machine-id /var/lib/dbus/machine-id