#!/usr/bin/env python
import os
import subprocess

keytime = subprocess.run(["date", "+%Y%m%d%H%M"], capture_output=True).stdout.decode().strip()

ssh_dir = os.path.expanduser("~/.ssh")
if not os.path.exists(ssh_dir):
    os.makedirs(ssh_dir, mode=0o700)

subprocess.run(["ssh-keygen", "-t", "rsa", "-b", "4096", "-f", f"/tmp/key-{keytime}", "-N", ""])

with open(f"/tmp/key-{keytime}.pub", "r") as f:
    public_key = f.read()
os.chmod(os.path.join(ssh_dir, "authorized_keys"), 0o600)

with open(os.path.join(ssh_dir, "authorized_keys"), "a") as f:
    f.write(public_key)

os.chmod(os.path.join(ssh_dir, "authorized_keys"), 0o400)

print("Please find the private key below:")

with open(f"/tmp/key-{keytime}", "r") as f:
    private_key = f.read()

print(private_key)

os.unlink(f"/tmp/key-{keytime}")
os.unlink(f"/tmp/key-{keytime}.pub")
