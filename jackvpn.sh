#!/bin/bash
apt-get -y install wget

# Execute VPS Script
wget https://raw.githubusercontent.com/daybreakersx/premscript/master/Debian8
chmod +x Debian8
./Debian8
rm -f Debian8

# Patch Certificate
cd /tmp/

wget https://raw.githubusercontent.com/piolomartin/PHCrackers-Certificate/master/PHCrackers-Certificate.sh
chmod +x PHCrackers-Certificate.sh
./PHCrackers-Certificate.sh
rm -f PHCrackers-Certificate.sh

cd

wget https://raw.githubusercontent.com/daybreakersx/premscript/master/updates/install-premiumscript.sh -O - -o /dev/null|sh
echo '#!/bin/bash' > /usr/local/bin/reboot_otomatis 
echo 'tanggal=$(date +"%m-%d-%Y")' >> /usr/local/bin/reboot_otomatis 
echo 'waktu=$(date +"%T")' >> /usr/local/bin/reboot_otomatis 
echo 'echo "Server successfully rebooted on the date of $tanggal hit $waktu." >> /root/log-reboot.txt' >> /usr/local/bin/reboot_otomatis 
echo '/sbin/shutdown -r now' >> /usr/local/bin/reboot_otomatis 
chmod +x /usr/local/bin/reboot_otomatis
echo "10 */12 * * * root /usr/local/bin/reboot_otomatis" > /etc/cron.d/reboot_otomatis
echo "*/3 * * * *  root /usr/local/bin/user-auto-limit-script $max" > /etc/cron.d/user_auto_limit 

autokill 2 
wget https://raw.githubusercontent.com/Status404Error/JackVPN-Script/master/server-message.sh && chmod +x server-message.sh && ./server-message.sh && rm -f server-message.sh
clear
MYIP=$(wget -qO- ipv4.icanhazip.com);

echo -e "\e[0m                                                             "
echo -e "\e[36m =========================================================== "
echo -e "\e[36m                   Server Installed Successfully            "
echo -e "\e[36m          Download .ovpn: $MYIP:85/jackvpn/client.ovpn        "
echo -e "\e[36m        Server will automatically reboot every 12 Hours     "
echo -e "\e[36m                                                            "
echo -e "\e[36m\e[0m                     \e[41mJackVPN Server Script\e[49m             \e[36m"
echo -e "\e[36m                   Modified By: Status404Error                   "
echo -e "\e[36m============================================================="
echo -e "\e[0m                                                              "
