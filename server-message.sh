#!/bin/sh
PUBLIC_IP=`curl -s http://ifconfig.me/ip`

echo "Server Public IP ${PUBLIC_IP}"

if [ -f /etc/issue.net ]; then
    rm -f /etc/issue.net
fi
 
cat > /etc/issue.net <<-END
<br><font color='#000000'>=======================================</br></font>
<br><font color='#008080'>***************** <b>Team StefanWorks SERVER</b> ****************</br></font>
<br><font color='#000000'>=======================================</br></font>
<br></br>
<br><font color='#FF0000'>****************** <b>!!!WARNING!!!</b> ******************</br></font>
<br></br>
<br><font color='#860000'>MAGNANAKAW NG SERVER</br></font>
<br><font color='#1E90FF'>ANG NAG POST NG EHI NA 'TO</br></font>
<br><font color='#FF0000'>WALANG RESPETO</br></font>
<br><font color='#008080'>DI MA LANG NAGPAALAM</br></font>
<br><font color='#BA55D3'>KUNG SINO KA MAN</br></font>
<br><font color='#32CD32'>TIGILAN MO NA YAN</br></font>
<br></br>
<br><font color='#FF0000'>FOLLOW THE RULES OR</br></font>
<br><font color='#FF0000'>ANG FB ACCOUNT MO MASUSUNOG</br></font>
<br></br>
<br><font color='#000000'>=======================================</br></font>
<br><font color='#0000FF'>************** <b>EXCLUSIVE FOR TSWVPN SERVER ONLY</b> ***************</br></font>
<br><font color='#000000'>=======================================</br></font>
END

service ssh restart
service openvpn restart
cd
echo "DONE"
