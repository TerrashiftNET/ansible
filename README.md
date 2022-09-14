## Table of contents
* [General info](#general-info)
* [Setup](#setup)

## General info

This repo is the ansible project defining all Terrashift.net infrastructure.

## setup

To run the project locally you will need the following packages:
- python3
- ansible

Additionally all secrets are encrypted via ansible-vault and you will need the vault credentials.
The main.yml manifest will deploy changes on all hosts. Specific groups only can be targeted by
calling their manifest instead of main.yml.

```
git clone git@github.com:TerrashiftNET/ansible.git
ansible-playbook --ask-vault-pass main.yml
```
