# Puppet LAMP Stack Automation

This repository contains Puppet manifest files and related resources for automating the configuration of a LAMP stack server. These files enable quick, consistent, and repeatable setup of Apache, PHP, and optional MariaDB on Ubuntu virtual machines.

## Contents
- **lamp_stack_server.pp**: Puppet manifest for setting up Apache, PHP, and PHP MySQL Connector.
- **phpinfo.php**: PHP script to verify PHP installation.

## Instructions
1. Clone the repository:  
   `git clone <repository-link>`
2. Apply the Puppet manifest:  
   `sudo puppet apply lamp_stack_server.pp`
3. Verify the setup:
   - Access Apache via `<VM-IP-Address>`.
   - Test PHP with `<VM-IP-Address>/phpinfo.php`.

## Features
- Automates LAMP stack installation.
- Ensures Apache and PHP are installed and running.
- Manages PHP MySQL Connector and optional MariaDB setup.

## Advantages
- Simplifies server provisioning with declarative infrastructure as code.
- Easily replicable for development, testing, or production environments.

## Notes
- Ensure the VM is running Ubuntu.

## Author
- Quan Nguyen
