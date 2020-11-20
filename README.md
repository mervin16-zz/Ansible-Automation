# Ansible Automation

This is a simple Ansible Automation project which contains several playbooks automating tasks across different platforms.

## Playbooks

The project currently has playbooks categorized in a folder for each platforms. The available platforms are:

- Fortinet Firewalls
- Checkpoint Firewalls
- Cisco IOS
- Linux Systems


## Installation

You need to have Ansible installed and configured to be able to run the playbooks. 

To install Ansible, please follow this [guide](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)

To run the playbooks for each platform, individual collections for each platforms need to be installed through Ansible Galaxy. Below are the commands for each platforms' collection to install.

[Checkpoint](https://galaxy.ansible.com/check_point/mgmt)

[Fortinet (fortios)](https://galaxy.ansible.com/fortinet/fortios)

[Cisco IOS](https://galaxy.ansible.com/cisco/ios)

Linux (This is in-built in Ansible)


## Tasks per Platform

Below is a list of tasks available through playbooks across each platforms in this repository

```Note: Several tasks may be found inside a single playbook. Please go through them individually to find the task that suits you```

### Checkpoint
- Access Rule creation
- Objects creation
- Policy creation

### Fortinet
- Access Rule creation
- Objects creation

### Cisco IOS
- Interface configuration
- Loopback address creation and configuration

### Checkpoint
- Telnet tests of given remote hosts
- Verification of SSL expiration date on given domain names / IP addresses


## License

Copyright 2020 Mervin Hemaraju

