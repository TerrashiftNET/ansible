## Terrashift ansible repository

This repository is handling terrashift.net node configuration management.

------------
### About:
Most resources on the nodes except for application data are managed through ansible.
With active data backups this allows nodes to be rebuilt automatically in minutes.


Ansible heavily relies on `hcloud` inventory plugin and `terraform` role tags to decide where
to run what. At the moment 2 roles are defined: "primary" and "secondary"


All sensitive credentials/secrets are passed as environment variables or encrypted with `ansible-vault`.
Deploys via github will just work, but if you need to edit encrypted values ping Zat for credentials.


### How to use:
Any sufficiently recent `ansible` installation will do. Additional requirement is `python3-hcloud` for inventory parsing.

ALWAYS encrypt sensitive information with `ansible-vault encrypt $file` before pushing upstream.
