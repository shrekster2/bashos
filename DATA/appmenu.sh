cd OFFICIALAPPS
clear
echo ---------------------------
echo APP MENU
echo 1.EXIT
echo 2.TEXT TO SPEECH
echo 3.SIMPLE TEXT WRITER
echo ---------------------------
echo
read -p "\\ " appchoice
if [[ $appchoice == "1" ]]; then
    cd ..
    /bin/bash ./mainmenu.sh
fi
if [[ $appchoice == "2" ]]; then
    /bin/bash ./tts.sh
fi
if [[ $appchoice == "3" ]]; then
    /bin/bash ./text.sh
fi