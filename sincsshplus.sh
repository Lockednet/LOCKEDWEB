#!/bin/bash
clear
echo "America/Sao_Paulo" > /etc/timezone
ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata
clear
crack=$(cut -d"'" -f2 /opt/sshplus/licenca.txt) > /dev/null 2>&1
sleep 1
rm *.sh* > /dev/null 2>&1
rm *.zip > /dev/null 2>&1
apt install unzip -y > /dev/null 2>&1
wget https://github.com/Lockednet/LOCKEDWEB/raw/main/install/sshplus.zip.001 > /dev/null 2>&1
wget https://github.com/Lockednet/LOCKEDWEB/raw/main/install/sshplus.zip.002 > /dev/null 2>&1
wget https://github.com/Lockednet/LOCKEDWEB/raw/main/install/sshplus.zip.003 > /dev/null 2>&1
cat sshplus.zip* > monitor.zip && zip -F monitor.zip > /dev/null 2>&1
rm -rf /opt/sshplus > /dev/null 2>&1
unzip monitor.zip -d  /opt/sshplus/ > /dev/null 2>&1
chmod -R 777 /opt/sshplus > /dev/null 2>&1
sleep 1
if [[ -e "/opt/sshplus/licenca.txt" ]]; then
sed -i "s;ATIVADO;$crack;g" /opt/sshplus/licenca.txt > /dev/null 2>&1
fi
clear
wget https://github.com/Lockednet/LOCKEDWEB/raw/main/install/sincpainel.zip > /dev/null 2>&1
unzip sincpainel.zip > /dev/null 2>&1
chmod +x *sh > /dev/null 2>&1
service ssh restart
sleep 1
cat /dev/null > ~/.bash_history && history -c && clear
rm sincpainel* > /dev/null 2>&1
rm *.zip > /dev/null 2>&1
rm *.001 > /dev/null 2>&1
rm *.002 > /dev/null 2>&1
rm *.003 > /dev/null 2>&1
clear
