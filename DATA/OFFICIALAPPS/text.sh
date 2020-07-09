#!/bin/bash
aplay complete.wav&
sleep 1
clear
set +v
clear
destdir=""
cd ../..
echo  --------------------
echo   SIMPLE TEXT WRITER 
echo  --------------------
echo 
echo  ---------------------
echo   TYPE YOUR TEXT HERE 
echo  ---------------------
echo
read -p "\\ " text
echo  -------------------
echo   NAME OF TEXT FILE 
echo  -------------------
echo
read -p "\\ " filen
destdir2="$destdir $filen"
echo "$text" >> "$destdir2"

echo --------------------------------------------------
echo  SAVED TEXT TO FILE                               
echo                                                   
echo  YOU CAN FIND THIS FILE IN YOUR BASH OS DIRECTORY
echo --------------------------------------------------
clear
cd DATA
bash ./appmenu.sh

