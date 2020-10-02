.DEFAULT_GOAL := help
.PHONY: help install

help:
	./view-help.sh README.md

install:
	cp backup-nextcloud /usr/local/bin/
	cp backup-nextcloud.service /etc/systemd/system/
	cp backup-nextcloud.timer /etc/systemd/system/
	systemctl enable backup-nextcloud.timer
	systemctl start backup-nextcloud.timer

uninstall:
	systemctl stop backup-nextcloud.timer
	systemctl disable backup-nextcloud.timer
	rm /etc/systemd/system/backup-nextcloud.timer
	rm /etc/systemd/system/backup-nextcloud.service
	rm /usr/local/bin/backup-nextcloud
