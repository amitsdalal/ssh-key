#!/bin/bash

keytime=`date +%Y%m%d%H%M`

if [[ -d ~/.ssh ]] 
  then
   ssh-keygen -f /tmp/key-$keytime -N ''
   cat /tmp/key-$keytime.pub >> ~/.ssh/authorized_keys
   chmod 400 ~/.ssh/authorized_keys
   echo "Please find the private key below"
   cat /tmp/key-$keytime
   rm -rf /tmp/key-$keytime 
else 
  mkdir ~/.ssh && chmod 700 ~/.ssh
  ssh-keygen -f /tmp/key-$keytime -N ''
  cat /tmp/key-$keytime.pub >> ~/.ssh/authorized_keys
  chmod 400 ~/.ssh/authorized_keys
  echo "Please find the private key below"
  cat /tmp/key-$keytime
  rm -rf /tmp/key-$keytime
fi
