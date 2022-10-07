#!/bin/bash

_INSTALL(){
	if [ -f /etc/centos-release ]; then
		yum install -y socat wget curl  git vim
	else
		apt install -y socat wget curl  git vim
	fi
	mkdir /etc/caddy
	mkdir /etc/naive
	wget --no-check-certificate https://github.com/teddysun/across/raw/master/bbr.sh && chmod +x bbr.sh && git clone https://github.com/U201413497/backup.git && mkdir yy.848586.xyz && cp /root/backup/caddy /usr/local/bin && cp /root/backup/caddy.conf /etc/caddy && cp /root/backup/naive /usr/local/bin&& cp /root/backup/config.json /etc/naive && cp /root/backup/caddy.service /etc/systemd/system && cp /root/backup/naive.service /etc/systemd/system && cp /root/backup/limits.conf  /etc/security && chmod +x /usr/local/bin/caddy && chmod +x /usr/local/bin/naive && cd && setcap 'cap_net_bind_service=+ep'  /usr/local/bin/caddy
	systemctl daemon-reload
	systemctl enable naive.service caddy.service
	echo Done!
}

_INSTALL
