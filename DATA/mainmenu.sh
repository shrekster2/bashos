
clear
aplay startup.wav&
sleep 4
pkill mpg123
clear
echo ----------------
echo SUPER START MENU
echo 1.EXIT
echo 2.SETTINGS
echo 3.APPLICATIONS
echo ----------------
echo
echo TODAY IS:
date
read -p "\\ " ssmchoice
if [[ $ssmchoice == "1" ]]; then
    clear
    aplay shutdown.wav&
    echo GOODBYE
    sleep 2
    cd ..
    /bin/bash bashos.sh
fi
if [[ $ssmchoice == "2" ]]; then
    /bin/bash ./settings.sh
fi
if [[ $ssmchoice == "3" ]]; then
    /bin/bash ./appmenu.sh
fi