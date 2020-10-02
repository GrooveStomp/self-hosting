.DEFAULT_GOAL := help
.PHONY: help install

help:
	../view-help.sh README.md

install:
	cp backup-postgres /usr/local/bin/
	cp backup-postgres.service /etc/systemd/system/
	cp backup-postgres.timer /etc/systemd/system/
	systemctl enable backup-postgres.timer
	systemctl start backup-postgres.timer

uninstall:
	systemctl stop backup-postgres.timer
	systemctl disable backup-postgres.timer
	rm /etc/systemd/system/backup-postgres.timer
	rm /etc/systemd/system/backup-postgres.service
	rm /usr/local/bin/backup-postgres
