#!/bin/sh

sed -i "s/10086/$PORT/" /etc/shadowsocks-libev/ss.json
sed -i "s/ss_passwd/$SS_PASSWD/" /etc/shadowsocks-libev/ss.json
sed -i "s/10086/$PORT/" /etc/shadowsocks-libev/v2r.json
sed -i "s/ss_passwd/$SS_PASSWD/" /etc/shadowsocks-libev/v2r.json
sed -i "s/10086/$PORT/" /etc/shadowsocks-libev/xray.json
sed -i "s/ss_passwd/$SS_PASSWD/" /etc/shadowsocks-libev/xray.json

ss-server -c /etc/shadowsocks-libev/$CONFIG_JSON
