#AUTOSCRIPT PERTALITE GRATIS BOSKU#

apt update && apt upgrade -y && update-grub && sleep 2 && reboot

sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt update && apt install -y bzip2 gzip coreutils screen curl && wget https://raw.githubusercontent.com/zahwanugrah/vpninjector/main/setup.sh && chmod +x setup.sh && screen -S setup ./setup.sh
