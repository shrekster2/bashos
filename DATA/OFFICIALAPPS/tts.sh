#!/bin/bash
clear
s2="exit"

echo -----------------
echo TEXT TO SPEECH
echo
echo TYPE exit TO EXIT
echo -----------------

while true; do
read -p "\\ " text

if [ "$text" == "$s2" ]
then
echo -------
echo EXITING
echo -------
cd ..
bash ./appmenu.sh
fi 
  
 
if [[ $text != "$s2" ]]; then
    echo "$text"
    spd-say "$text"
        sleep 1
fi 
done
