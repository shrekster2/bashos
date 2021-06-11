
#!/bin/bash
echo TYPE 1 TO LIST FILES
echo TYPE 2 AND TYPE NAME OF FILE TO EXECUTE FILE
echo TYPE 3 TO EXIT

while true; do

read -p "\\ " text

if [ "$text" == "1" ]
then 
ls
fi


if [ "$text" == "2" ]
then 
read -p "NAME OF FILE: " text1
bash ./"$text1"
fi


if [ "$text" == "3" ]
then 
echo -------
echo EXITING
echo -------
cd ..
bash ./appmenu.sh
fi 
done
