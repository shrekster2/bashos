cd DATA
#setting variables
usernamedir="username.bashos"
passworddir="password.bashos"

filename='username.bashos' #check username
while read line; do
echo "$line"
username0=$line
done < $filename
clear

filename1='password.bashos' #check password
while read line; do
echo "$line"
password0=$line
done < $filename1
clear

firstsetup(){
    mpg123 setup.mp3&
    sleep 2
    pkill mpg123
    echo 1
    sleep 0.3
    clear
    echo  Hello. It seems to me that you have never set an account on this thing.
    echo  Why dont you tell us about yourself?
    echo Type a username:
    read -p "\\ " username1
    echo Type a password:
    read -p "\\ " password1
    echo  Youll NEED these credentials to log in, or else you have to delete some files to get back in.
    sleep 1.5
    clear
    passwordconfirm
}

passwordconfirm(){
    echo Type your password again:
    read -p "\\ " passwordconfirmin
    if [ "$passwordconfirmin" != "$password1" ]
    then
        echo RIP password
        sleep .5
        clear
        pkill mpg123
        firstsetup
    fi
    if [ "$passwordconfirmin" == "$password1" ] 
    then
        echo "$password1" >> "$passworddir"
        echo "$username1" >> "$usernamedir"
        echo SAVING
        sleep 2
        pkill mpg123
        menu
    
    fi
}
menu(){
    echo going to menu
    /bin/bash ./mainmenu.sh
}

autologincheck(){
    if [[ $username0 == "autologin" ]]; then
        echo AUTOLOGIN ENABLED
        menu
    fi
    if [[ $username0 != "autologin" ]]; then
        echo AUTOLOGIN DISABLED
        clear
        passmenu
    fi
}
passmenu(){ #check user stuff
    sleep 0.3
    clear
    echo TYPE USERNAME:
    read -p "\\ " usernamemenu
    if [[ $usernamemenu == $username0 ]]; then
        echo USERNAME CORRECT
        sleep 1
    
        echo TYPE PASSWORD:
        read -p "\\ " passwordmenu
            if [[ $passwordmenu == $password0 ]]; then
            echo PASSWORD CORRECT
            sleep 1
            menu
        fi
    
    fi  

}
if [ ! -f username.bashos ]
then
    firstsetup
fi

if [ -f username.bashos ]
then
    autologincheck
fi
