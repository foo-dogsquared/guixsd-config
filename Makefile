# The name of the host to be used at guixsd-config/hosts/$HOST.
HOST := vm

# The manifest file relative to the project folder.
MANIFEST := base.scm

# The installation directory of the GuixSD config.
INSTALL_DIR := /etc/guixsd-config

# The entrypoint to the system configuration.
DEFAULT_CFG := /etc/config.scm


install:
	herd start cow-store /mnt
	sudo mkdir $(PREFIX)/etc
	sudo cp --recursive $$(pwd) "$(PREFIX)/$(INSTALL_DIR)"
	sudo ln -s "$(PREFIX)/$(INSTALL_DIR)/hosts/$(HOST)/config.scm" "$(PREFIX)/$(INSTALL_DIR)"
	guix system init "$(PREFIX)/$(DEFAULT_CFG)" "$(PREFIX)"


update:
	guix pull


upgrade: update
	guix package --load-path="$$(pwd)" --manifest="$$(pwd)/manifests/$(MANIFEST)" --fallback


system_upgrade: update
	sudo guix system reconfigure $(DEFAULT_CFG)


rollback:
	sudo guix system roll-back
