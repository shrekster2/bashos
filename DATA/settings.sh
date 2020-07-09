
while true; do
clear
echo --------------------------
echo SETTINGS
echo 1.EXIT
echo 2.ENABLE/DISABLE AUTOLOGIN
echo --------------------------
read -p "\\ " settingchoice
if [[ $settingchoice == "1" ]]; then #choice 1
    /bin/bash ./mainmenu.sh
fi
if [[ $settingchoice == "2" ]]; then #choice 2
    autologinfile="username.bashos"
    echo Y = ENABLE AUTOLOGIN, N = DISABLE AUTOLOGIN
    read -p "\\ " autologinchoice
    if [[ $autologinchoice == "y" ]]; then
        echo "autologin" >> $autologinfile
        echo FINISHED
    fi
    if [[ $autologinchoice == "n" ]]; then
        echo SET A USERNAME
        read -p "\\ " usernameautochoice
        echo "$usernameautochoice" >> "$autologinfile"
        echo DONE
    fi
fi
done