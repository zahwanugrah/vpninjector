#!/bin/bash
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.co);
versi=$(cat /home/ver)
if [[ $versi == 1.2 ]]; then
echo "You Have The Latest Version"
exit 0
fi
echo "Start Update"
cd /usr/bin
wget -O menu "https://prem.vpnstores.net/menu.sh"
wget -O usernew "https://prem.vpnstores.net/usernew.sh"
wget -O trial "https://prem.vpnstores.net/trial.sh"
wget -O change-port "https://prem.vpnstores.net/change.sh"
wget -O port-ovpn "https://prem.vpnstores.net/port-ovpn.sh"
wget -O port-ssl "https://prem.vpnstores.net/port-ssl.sh"
wget -O port-wg "https://prem.vpnstores.net/port-wg.sh"
wget -O port-tr "https://prem.vpnstores.net/port-tr.sh"
wget -O port-sstp "https://prem.vpnstores.net/port-sstp.sh"
wget -O port-squid "https://prem.vpnstores.net/port-squid.sh"
wget -O port-ws "https://prem.vpnstores.net/port-ws.sh"
wget -O port-vless "https://prem.vpnstores.net/port-vless.sh"
wget -O wbmn "https://prem.vpnstores.net/webmin.sh"
wget -O xp "https://prem.vpnstores.net/xp.sh"
wget -O limit-speed "https://prem.vpnstores.net/limit-speed.sh"
wget -O add-sstp "https://prem.vpnstores.net/add-sstp.sh"
wget -O add-ws "https://prem.vpnstores.net/add-ws.sh"
wget -O add-vless "https://prem.vpnstores.net/add-vless.sh"
wget -O add-tr "https://prem.vpnstores.net/add-tr.sh"
chmod +x change-port
chmod +x port-ovpn
chmod +x port-ssl
chmod +x port-wg
chmod +x port-sstp
chmod +x port-tr
chmod +x port-squid
chmod +x port-ws
chmod +x port-vless
chmod +x wbmn
chmod +x xp
chmod +x limit-speed
echo "0 5 * * * root clear-log && reboot" > /etc/crontab
echo "0 0 * * * root xp" > /etc/crontab
cd
echo "1.2" > /home/ver
clear
echo " Fix minor Bugs"
echo " Now You Can Change Port Of Some Services"
echo " Reboot 5 Sec"
sleep 5
rm -f update.sh
reboot
