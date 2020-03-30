#!/bin/bash

keytime=`date +%Y%m%d%H%M`

ssh-keygen -f /tmp/key-$keytime -N ''
 
cat /tmp/key-$keytime.pub >> ~/.ssh/authorized_keys

echo "Please find the private key below"

cat /tmp/key-$keytime
rm -rf /tmp/key-$keytime 
