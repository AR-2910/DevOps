# Multi-Server Nginx Setup Automation

## Description
This Ansible project automates the installation and setup of the Nginx web server on multiple target servers. It simplifies the process of configuring Nginx across your infrastructure by providing a reusable playbook.

## Steps
1. Installs the Nginx package on target servers.
2. Starts the Nginx service to make it accessible.

## Prerequisites
- Ansible installed on your local machine.
- Passwordless SSH access set up for target servers.

## How to Run
1. Update the inventory file `inventory.txt` with the IP addresses or hostnames of your target servers.
2. Ensure your SSH key is set up on the target servers for passwordless access.

   - To run the playbook on all servers listed in the inventory file:
     ```bash
     ansible-playbook -i inventory.txt nginx_setup_playbook.yml
     ```

   - To target a specific server directly without using the inventory file, replace `<server_ip>` with the actual IP address or hostname of the server:
     ```bash
     ansible-playbook -i "<server_ip>," nginx_setup_playbook.yml
     ```

   - To run the playbook only on web servers listed in the inventory file:
     ```bash
     ansible-playbook -i inventory.txt --limit=WEBservers nginx_setup_playbook.yml
     ```
     This command targets only the servers listed under the `[WEBservers]` group in the inventory file.


## Note
Please ensure to replace placeholder IP addresses in the inventory file with the actual IP addresses or hostnames of your servers before running the playbook. Failure to do so may result in incorrect configuration or failed deployments.
