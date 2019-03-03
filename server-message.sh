#!/bin/sh
PUBLIC_IP=`curl -s http://ifconfig.me/ip`

echo "Server Public IP ${PUBLIC_IP}"

if [ -f /etc/issue.net ]; then
    rm -f /etc/issue.net
fi
 
cat > /etc/issue.net <<-END
<br><font color='#000000'>=======================================</br></font>
<br><font color='#0000FF'>************** <b>EXCLUSIVE FOR JackVPN SERVER ONLY</b> ***************</br></font>
<br><font color='#FF0000'>************** <b>DO NOT USE FOR ANY MEANS OF USAGE</b> ****************</br></font>
<br><font color='#000000'>=======================================</br></font>
END

service ssh restart
service openvpn restart
cd
echo "DONE"
