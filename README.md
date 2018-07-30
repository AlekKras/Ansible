# IaC - Ansible
A personal space to learn <img src="https://www.redhat.com/cms/managed-files/Ansible-Tower-Platform-diagram-transparent.png">Ansible</img>

## Installation

Run `ansible_install.sh` and then `ansible --version`. You should have Ansible installed right now.

If you experience any issues after the bash script, run `sudo apt-get update && sudo apt-get install ansible` and you will be good to go!

## Cyber_Testing

Refer to:
- `install_pentest.yml`
| -  to install the Penetration Tools.
- `install_tools.yml`
| - to install most basic exploration tools (nmap, nikto, hping3)
- `test.yml`
| - to check your installation of ansible, if it works fine or not

## Ethical Testing

Refer to the `test.yml` to perform simple checks on an application. Basically a representation of how to run multiple bash scripts and organize that along in one playbook.

If your playbook doesn't return a good/positive output, then possible some of packages are not installed. Raise a pull request or an issue if you either can fix a bug or found a bug

## Lesson1

That was my first Ansible playbook that I have written which basically involved in creating a Moodle instance on the local server.

## AWS

This is a folder for all Ansible and Amazon Web Services related stuff
