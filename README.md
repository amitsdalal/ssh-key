# SSH Key Generator

This repository contains scripts to automatically generate SSH keys for your user account. The project is released under the MIT License.

## Description

These scripts create a new SSH key for the user running the command. Two versions are available: a shell script and a Python script (requires Python 3.8 or higher).

## Requirements

- SSH keygen
- curl (for downloading the scripts)

## Usage

### Shell script

To create a new SSH key using the shell script, run the following command:

```bash
curl -s https://raw.githubusercontent.com/amitsdalal/ssh-key/master/key.sh | bash
```
### Using python > 3.8
```bash
curl -s https://raw.githubusercontent.com/amitsdalal/ssh-key/master/key.sh | python
```

This project is licensed under the terms of the MIT License.

