#!/bin/bash
#Licensed to https://www.hostingtermurah.net/
if [[ -e /etc/debian_version ]]; then
	OS=debian
	RCLOCAL='/etc/rc.local'
elif [[ -e /etc/centos-release || -e /etc/redhat-release ]]; then
	OS=centos
	RCLOCAL='/etc/rc.d/rc.local'
	chmod +x /etc/rc.d/rc.local
else
	echo "It looks like you are not running this installer on Debian, Ubuntu or Centos system"
	exit
fi
color1='\e[031;1m'
color2='\e[34;1m'
color3='\e[0m'
echo "--------------- Welcome To Premium Script Menu ---------------"
	echo "----------------- Moded By Zhang-Zi --------------------"
	echo " "
	cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
	cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
	freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
	tram=$( free -m | awk 'NR==2 {print $2}' )
	swap=$( free -m | awk 'NR==4 {print $2}' )
	up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')

	echo -e "\e[032;1mCPU Model:\e[0m $cname"
	echo -e "\e[032;1mNumber Of Cores:\e[0m $cores"
	echo -e "\e[032;1mCPU Frequency:\e[0m $freq MHz"
	echo -e "\e[032;1mTotal Amount Of RAM:\e[0m $tram MB"
	echo -e "\e[032;1mTotal Amount Of Swap:\e[0m $swap MB"
	echo -e "\e[032;1mSystem Uptime:\e[0m $up"
	echo -e "-----------------------------------------------------"
	echo ""
	echo -e "-----------------[ SSH & OVPN OPTION ]--------------"
	echo -e "${color1}1${color3}.Create User Account (${color2}usernew${color3})"
	echo -e "${color1}2${color3}.Create Trial Account (${color2}trial${color3})"
	echo -e "${color1}3${color3}.Add Active Period SSH & OpenVPN Account (${color2}renew${color3})"
	echo -e "${color1}4${color3}.Delete User Account (${color2}deluser${color3})"
	echo -e "${color1}5${color3}.Check Account Login (${color2}cek${color3})"
	echo -e "${color1}6${color3}.Daftar Member SSH & OpenVPN (${color2}member${color3})"
	echo -e "${color1}7${color3}.Delete User Expired SSH & OpenVPN (${color2}delete${color3})"
	echo -e "${color1}8${color3}.Set up Autokill SSH (${color2}autokill${color3})"
	echo -e "${color1}9${color3}.Displays Users Who Do Multi Login SSH (${color2}ceklim${color3})"
	echo -e "${color1}10${color3}.Restart Service Dropbear, Squid3, OpenVPN dan SSH (${color2}restart${color3})"
	echo -e ""
  echo -e "------------------[ V2RAY/VMESS OPTION  ]---------------"
  echo -e "${color1}11${color3}.Create V2ray/Vmess Account (${color2}add-ws${color3})"
	echo -e "${color1}12${color3}.Delete V2ray/Vmess Account (${color2}del-ws${color3})"
  echo -e "${color1}13${color3}.Extend V2ray/Vmess Account (${color2}renew-ws${color3})"
  echo -e "${color1}14${color3}.Check User Login (${color2}cek-ws${color3})"
  echo -e ""
  echo -e "------------------[ V2RAY/VLESS OPTION ]---------------"
  echo -e "${color1}15${color3}.Create V2ray/Vless Account (${color2}add-vless${color3})"
  echo -e "${color1}16${color3}.Delete V2ray/Vless Account (${color2}del-vless${color3})"
  echo -e "${color1}17${color3}.Extend V2ray/Vless Account (${color2}renew-vless${color3})"
  echo -e "${color1}18${color3}.Check User Login (${color2}cek-ws${color3})"
  echo -e ""
  echo -e "------------------[ TROJAN GFW  OPTION ]---------------"
  echo -e "${color1}19${color3}.Create Trojan Account (${color2}add-tr${color3})"
  echo -e "${color1}20${color3}.Delete Trojan Account (${color2}del-tr${color3})"
  echo -e "${color1}21${color3}.Extend Trojan Account (${color2}renew-tr${color3})"
  echo -e "${color1}22${color3}.Check User Login (${color2}cek-tr${color3})"
  echo -e ""
  echo -e "------------------[ SHADOWSOCKS OBSF OPTION ]---------------"
  echo -e "${color1}23${color3}.Create Shadowsocks Account (${color2}add-ss${color3})"
  echo -e "${color1}24${color3}.Delete Shadowsocks Account (${color2}del-ss${color3})"
  echo -e "${color1}25${color3}.Extend Shadowsocks Account (${color2}renew-ss${color3})"
  echo -e "${color1}26${color3}.Check User Login (${color2}cek-ss${color3})"
  echo -e ""
  echo -e "------------------[SHADOWSOCKSR OPTION ]---------------"
  echo -e "${color1}27${color3}.Create ShadowsocksR Account (${color2}add-ssr${color3})"
  echo -e "${color1}28${color3}.Delete ShadowsocksR Account (${color2}del-ssr${color3})"
  echo -e "${color1}29${color3}.Extend ShadowsocksR Account (${color2}renew-ssr${color3})"
  echo -e "${color1}30${color3}.Show Other SSR Menu (${color2}ssr${color3})"
  echo -e ""
  echo -e "------------------[  WIREGUARD  OPTION ]---------------"
  echo -e "${color1}31${color3}.Create Wireguard Account (${color2}add-wg${color3})"
  echo -e "${color1}32${color3}.Delete Wireguard Account (${color2}del-wg${color3})"
  echo -e "${color1}33${color3}.Extend Wireguard Account (${color2}renew-wg${color3})"
  echo -e "${color1}34${color3}.Check User Login (${color2}cek-wg${color3})"
  echo -e "${color1}35${color3}.Check Wireguard User Interface (${color2}wg show${color3})"
  echo -e " "
  echo -e "------------------[  L2TP  OPTION ]---------------"
  echo -e "${color1}36${color3}.Create L2TP Account (${color2}add-l2tp${color3})"
  echo -e "${color1}37${color3}.DeletE L2TP Account (${color2}del-l2tp${color3})"
  echo -e "${color1}38${color3}.Extend L2TP Account (${color2}renew-l2tp${color3})"
  echo -e " "
  echo -e "------------------[  PPTP  OPTION ]---------------"
  echo -e "${color1}38${color3}.Create PPTP Account (${color2}add-pptp${color3})"
  echo -e "${color1}39${color3}.Delete PPTP Account (${color2}del-pptp${color3})"
  echo -e "${color1}40${color3}.Extend PPTP Account (${color2}renew-pptp${color3})"
  echo -e "${color1}41${color3}.Check User Login (${color2}cek-pptp${color3})"
  echo -e " "
  echo -e "------------------[  SSTP  OPTION ]---------------"
  echo -e "${color1}42${color3}.Create SSTP Account (${color2}add-sstp${color3})"
  echo -e "${color1}43${color3}.Delete SSTP Account (${color2}del-sstp${color3})"
  echo -e "${color1}44${color3}.Extend SSTP Account (${color2}renew-sstp${color3})"
  echo -e "${color1}45${color3}.Check User Login (${color2}cek-sstp${color3})"
  echo -e " "
	echo -e "-----------------[ SYSTEM OPTION ]-----------------"
	echo -e "${color1}46${color3}.Speedtest Server (${color2}speedtest${color3})"
	echo -e "${color1}24${color3}.Add Or Change Subdomain Host For VPS (${color2}add-host${color3})"
	echo -e "${color1}25${color3}.Change Port Of Some Service (${color2}change-port${color3})"
	echo -e "${color1}26${color3}.Restart Stunnel (${color2}service stunnel restart${color3})"
	if [[ "$OS" = 'debian' ]]; then 
	echo -e "${color1}27${color3}.Restart OpenSSH (${color2}service ssh restart${color3})"
	echo -e "${color1}28${color3}.Restart Dropbear (${color2}service dropbear restart${color3})"
	echo -e "${color1}29${color3}.Restart OpenVPN (${color2}service openvpn restart${color3})"
	echo -e "${color1}30${color3}.Restart Squid Proxy (${color2}service squid3 restart${color3})"
else
	echo -e "${color1}27${color3}.Restart OpenSSH (${color2}service sshd restart${color3})"
	echo -e "${color1}28${color3}.Restart Dropbear (${color2}service dropbear restart${color3})"
	echo -e "${color1}29${color3}.Restart OpenVPN (${color2}service openvpn restart${color3})"
	echo -e "${color1}30${color3}.Restart Squid Proxy (${color2}service squid restart${color3})"
fi
echo -e "${color1}31${color3}.Edit Server Port (${color2}edit-port${color3})"
echo -e "${color1}32${color3}.Set Auto Reboot (${color2}auto-reboot${color3})"
echo -e "${color1}33${color3}.Reboot VPS(${color2}reboot${color3})"
echo -e "${color1}34${color3}.Change Server Password (${color2}passwd${color3})"
echo -e " "
echo -e "-----=[ Others ]=-----"
echo -e "${color1}35${color3}.View Installation Log (${color2}log-install${color3})"
echo -e "${color1}36${color3}.VPS Diagnostics (${color2}diagnosa${color3})"
echo -e "${color1}37${color3}.Exit Menu (${color2}exit${color3})"
echo "------------------------Script by FordSenpai-----------------------------"
read -p "Choose an option from (1-37): " x
if test $x -eq 1; then
user-add
elif test $x -eq 2; then
user-generate
elif test $x -eq 3; then
trial
elif test $x -eq 4; then
user-aktif
elif test $x -eq 5; then
user-password
elif test $x -eq 6; then
read -p "Select Maximum Login (1-2): " MULTILOGIN
user-ban $MULTILOGIN
elif test $x -eq 7; then
user-unban
elif test $x -eq 8; then
user-lock
elif test $x -eq 9; then
user-unlock
elif test $x -eq 10; then
user-delete
elif test $x -eq 11; then
user-detail
elif test $x -eq 12; then
user-list
elif test $x -eq 13; then
user-login
elif test $x -eq 14; then
user-log
elif test $x -eq 15; then
read -p "Select Maximum Login (1-2): " MULTILOGIN
user-limit $MULTILOGIN
elif test $x -eq 16; then
autokill
elif test $x -eq 17; then
infouser
elif test $x -eq 18; then
expireduser
elif test $x -eq 19; then
user-delete-expired
elif test $x -eq 20; then
clear
echo "This script runs automatically every 12 hours"
echo "You don't need to run it manually"
echo "If you still want to run this script, type user-expire"
elif test $x -eq 21; then
log-limit
elif test $x -eq 22; then
log-ban
elif test $x -eq 23; then
speedtest --share
elif test $x -eq 24; then
bench-network
elif test $x -eq 25; then
ram
elif test $x -eq 26; then
service stunnel4 restart
elif test $x -eq 27; then
	if [[ "$OS" = 'debian' ]]; then 
		service ssh restart 
	else 
		service sshd restart 
	fi
elif test $x -eq 28; then
service dropbear restart
elif test $x -eq 29; then
service openvpn restart
elif test $x -eq 30; then
service squid restart
elif test $x -eq 31; then
edit-port
elif test $x -eq 32; then
auto-reboot
elif test $x -eq 33; then
reboot
elif test $x -eq 34; then
passwd
elif test $x -eq 35; then
log-install
elif test $x -eq 36; then
diagnosa
elif test $x -eq 37; then
echo " "
echo "Goodbye Menu!"
echo " "
exit
else
echo "Options Not Available In Menu."
echo " "
exit
fi
