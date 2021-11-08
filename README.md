# iac-tools

Scripts to build my infrastructure.

## Prerequisite

>:warning: The following commands are for `Ubuntu` only.

* Install make.

```bash
sudo apt-get install build-essential
```

* Install ansible.

```bash
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
```

* Fill secrets by creating a `secrets.yaml` from `secrets.template` under `iventory/group_vars/all`.

## Commands in Makefile

| command     | description                  |
|-------------|------------------------------|
| install-pg  | Install database             |
| remove-pg   | Remove database              |
| install-k3d | Install cluster k3d          |
| remove-k3d  | Remove closter k3d           |
| ping        | Check access to the machines |

## TODO

* [ ] Add install prerequisites (docker, nginx, etc.)
* [ ] Install k3d from a yaml file instead of passing command line arguments
