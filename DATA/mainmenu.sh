
clear
aplay startup.wav&
sleep 4
pkill mpg123
clear
usernamedir="username.bashos"
filename='username.bashos' #check username
while read line; do
echo "$line"
username0=$line
done < $filename
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
    echo GOODBYE
	if [[ $username0 == "autologin" ]]; then
		exit
	fi
	aplay shutdown.wav&
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
