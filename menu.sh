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
	echo -e "======================================================================="
  echo -e "------------------[ V2RAY/VMESS OPTION  ]---------------"
  echo -e "${color1}11${color3}.Create V2ray/Vmess Account (${color2}add-ws${color3})"
  echo -e "${color1}12${color3}.Delete V2ray/Vmess Account (${color2}del-ws${color3})"
  echo -e "${color1}13${color3}.Extend V2ray/Vmess Account (${color2}renew-ws${color3})"
  echo -e "${color1}14${color3}.Check User Login (${color2}cek-ws${color3})"
  echo -e "=============================================================================="
  echo -e "------------------[ V2RAY/VLESS OPTION ]---------------"
  echo -e "${color1}15${color3}.Create V2ray/Vless Account (${color2}add-vless${color3})"
  echo -e "${color1}16${color3}.Delete V2ray/Vless Account (${color2}del-vless${color3})"
  echo -e "${color1}17${color3}.Extend V2ray/Vless Account (${color2}renew-vless${color3})"
  echo -e "${color1}18${color3}.Check User Login (${color2}cek-ws${color3})"
  echo -e "==============================================================================="
  echo -e "------------------[ TROJAN GFW  OPTION ]---------------"
  echo -e "${color1}19${color3}.Create Trojan Account (${color2}add-tr${color3})"
  echo -e "${color1}20${color3}.Delete Trojan Account (${color2}del-tr${color3})"
  echo -e "${color1}21${color3}.Extend Trojan Account (${color2}renew-tr${color3})"
  echo -e "${color1}22${color3}.Check User Login (${color2}cek-tr${color3})"
  echo -e "==============================================================================="
  echo -e "------------------[ SHADOWSOCKS OBSF OPTION ]---------------"
  echo -e "${color1}23${color3}.Create Shadowsocks Account (${color2}add-ss${color3})"
  echo -e "${color1}24${color3}.Delete Shadowsocks Account (${color2}del-ss${color3})"
  echo -e "${color1}25${color3}.Extend Shadowsocks Account (${color2}renew-ss${color3})"
  echo -e "${color1}26${color3}.Check User Login (${color2}cek-ss${color3})"
  echo -e "==============================================================================="
  echo -e "------------------[SHADOWSOCKSR OPTION ]---------------"
  echo -e "${color1}27${color3}.Create ShadowsocksR Account (${color2}add-ssr${color3})"
  echo -e "${color1}28${color3}.Delete ShadowsocksR Account (${color2}del-ssr${color3})"
  echo -e "${color1}29${color3}.Extend ShadowsocksR Account (${color2}renew-ssr${color3})"
  echo -e "${color1}30${color3}.Show Other SSR Menu (${color2}ssr${color3})"
  echo -e "=============================================================================="
  echo -e "------------------[  WIREGUARD  OPTION ]---------------"
  echo -e "${color1}31${color3}.Create Wireguard Account (${color2}add-wg${color3})"
  echo -e "${color1}32${color3}.Delete Wireguard Account (${color2}del-wg${color3})"
  echo -e "${color1}33${color3}.Extend Wireguard Account (${color2}renew-wg${color3})"
  echo -e "${color1}34${color3}.Check User Login (${color2}cek-wg${color3})"
  echo -e "${color1}35${color3}.Check Wireguard User Interface (${color2}wg show${color3})"
  echo -e "==============================================================================="
  echo -e "------------------[  L2TP  OPTION ]---------------"
  echo -e "${color1}36${color3}.Create L2TP Account (${color2}add-l2tp${color3})"
  echo -e "${color1}37${color3}.DeletE L2TP Account (${color2}del-l2tp${color3})"
  echo -e "${color1}38${color3}.Extend L2TP Account (${color2}renew-l2tp${color3})"
  echo -e "==============================================================================="
  echo -e "------------------[  PPTP  OPTION ]---------------"
  echo -e "${color1}39${color3}.Create PPTP Account (${color2}add-pptp${color3})"
  echo -e "${color1}40${color3}.Delete PPTP Account (${color2}del-pptp${color3})"
  echo -e "${color1}41${color3}.Extend PPTP Account (${color2}renew-pptp${color3})"
  echo -e "${color1}42${color3}.Check User Login (${color2}cek-pptp${color3})"
  echo -e "==============================================================================="
  echo -e "------------------[  SSTP  OPTION ]---------------"
  echo -e "${color1}43${color3}.Create SSTP Account (${color2}add-sstp${color3})"
  echo -e "${color1}44${color3}.Delete SSTP Account (${color2}del-sstp${color3})"
  echo -e "${color1}45${color3}.Extend SSTP Account (${color2}renew-sstp${color3})"
  echo -e "${color1}46${color3}.Check User Login (${color2}cek-sstp${color3})"
  echo -e "=============================================================================="
  echo -e "-----------------[ SYSTEM OPTION ]-----------------"
  echo -e "${color1}47${color3}.Speedtest Server (${color2}speedtest${color3})"
  echo -e "${color1}48${color3}.Add Or Change Subdomain Host For VPS (${color2}add-host${color3})"
  echo -e "${color1}49${color3}.Change Port Of Some Service (${color2}change-port${color3})"
  echo -e "${color1}50${color3}.Autobackup Data VPS (${color2}autobackup${color3})"
  echo -e "${color1}51${color3}.Backup Data VPS (${color2}backup${color3})"
  echo -e "${color1}52${color3}.Restore Data VPS (${color2}restore${color3})"
  echo -e "${color1}53${color3}.Webmin Menu (${color2}wbmn${color3})"
  echo -e "${color1}54${color3}.Update To Latest Kernel (${color2}kernel-updt${color3})"
  echo -e "${color1}55${color3}.Limit Bandwith Speed Server (${color2}limit-speed ${color3})"
  echo -e "${color1}56${color3}.Check Usage of VPS Ram (${color2}ram ${color3})"
  echo -e "${color1}57${color3}.Reboot VPS (${color2}service squid reboot${color3})"
  echo -e "${color1}58${color3}.Update To Latest Script Version (${color2}update${color3})"
  echo -e "${color1}59${color3}.Reboot VPS(${color2}reboot${color3})"
  echo -e "${color1}60${color3}.Change Server Password (${color2}passwd${color3})"
  echo -e "${color1}61${color3}.Renew Certificate V2ray (${color2}cert2vray${color3})"
  echo -e "${color1}62${color3}.Exit Menu (${color2}exit${color3})"
  echo "------------------------Script Mod By Zhang-Zi-----------------------------"
read -p "Choose an option from (1-62): " x
if test $x -eq 1; then
usernew
elif test $x -eq 2; then
trial
elif test $x -eq 3; then
renew
elif test $x -eq 4; then
deluser
elif test $x -eq 5; then
cek
elif test $x -eq 6; then
member
elif test $x -eq 7; then
delete
elif test $x -eq 8; then
autokill
elif test $x -eq 9; then
ceklim
elif test $x -eq 10; then
restart
elif test $x -eq 11; then
add-ws
elif test $x -eq 12; then
del-ws
elif test $x -eq 13; then
renew-ws
elif test $x -eq 14; then
cek-ws
elif test $x -eq 15; then
add-vless
elif test $x -eq 16; then
del-vless
elif test $x -eq 17; then
renew-vless
elif test $x -eq 18; then
cek-ws
elif test $x -eq 19; then
add-tr
elif test $x -eq 20; then
del-tr
elif test $x -eq 21; then
renew-tr
elif test $x -eq 22; then
cek-tr
elif test $x -eq 23; then
add-ss
elif test $x -eq 24; then
del-ss
elif test $x -eq 25; then
renew-ss
elif test $x -eq 26; then
cek-ss
elif test $x -eq 27; then
add-ssr
elif test $x -eq 28; then
del-ssr
elif test $x -eq 29; then
renew-ssr
elif test $x -eq 30; then
ssr
elif test $x -eq 31; then
add-wg
elif test $x -eq 32; then
del-wg
elif test $x -eq 33; then
cek-wg
elif test $x -eq 34; then
renew-wg
elif test $x -eq 35; then
wg show
elif test $x -eq 36; then
add-l2tp
elif test $x -eq 37; then
del-l2tp
elif test $x -eq 38; then
renew-l2tp
elif test $x -eq 39; then
add-pptp
elif test $x -eq 40; then
del-pptp
elif test $x -eq 41; then
renew-pptp
elif test $x -eq 42; then
cek-pptp
elif test $x -eq 43; then
add-sstp
elif test $x -eq 44; then
del-sstp
elif test $x -eq 45; then
renew-sstp
elif test $x -eq 46; then
cek-sstp
elif test $x -eq 47; then
speedtest
elif test $x -eq 48; then
add-host
elif test $x -eq 49; then
change-port
elif test $x -eq 50; then
autobackup
elif test $x -eq 51; then
backup
elif test $x -eq 52; then
restore
elif test $x -eq 53; then
wbmn
elif test $x -eq 54; then
kernel-updt
elif test $x -eq 55; then
limit-speed
elif test $x -eq 56; then
ram
elif test $x -eq 57; then
reboot
elif test $x -eq 58; then
update
elif test $x -eq 59; then
reboot
elif test $x -eq 60; then
passwd
elif test $x -eq 61; then
cert2vray
elif test $x -eq 62; then
echo " "
echo "Goodbye Menu!"
echo " "
exit
else
echo "Options Not Available In Menu."
echo " "
exit
fi
