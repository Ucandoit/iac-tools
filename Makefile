.PHONY: ping
ping: ## ping host
	ansible k8s -i inventory/hosts.ini -m ping

.PHONY: install-k3d
install-k3d: ## Install k3d cluster
	ansible-playbook install-k3d.yaml -i inventory/hosts.ini

.PHONY: remove-k3d
remove-k3d: ## Remove k3d cluster
	ansible-playbook remove-k3d.yaml -i inventory/hosts.ini

.PHONY: install-pg
install-pg: ## Install postgres
	ansible-playbook install-pg.yaml -i inventory/hosts.ini

.PHONY: remove-pg
remove-pg: ## Remove postgres
	ansible-playbook remove-pg.yaml -i inventory/hosts.ini
