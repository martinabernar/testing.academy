#!/bin/bash


PLAY=y
echo "myslim si cislo od 1-20"
while [[ $PLAY =~ ^(y|YES|yes|Y|A|a|ano|ANO)$ ]]; do 

SECRET=6
TIP=0
ATTEMPTS=5

while [[ $TIP -ne  $SECRET ]] && [[ $ATTEMPTS -gt 0 ]] ; do
   read -p "zadaj tip: " TIP
   echo  "tvoj TIP je :" $TIP 
   ATTEMPTS=$[[$ATTEMPTS-1]]
  echo "zostavajuci pocet pokusov : $ATTEMPTS"

 
if [[ -n $TIP ]] && [[ $TIP =~ ^[0-9]+$ ]] && [[ $TIP -ge 1 ]] && [[ $TIP -le 20 ]]; then  
    echo "success"
else 
    echo "failure"
fi
 

   if [[ $TIP -gt $SECRET ]]; then
    echo "moje cislo je mensie ako $TIP"
   
   else 
    if [[ $TIP -lt $SECRET ]]; then
        echo "moje cislo je vacsie ako $TIP"
    else
        echo " cislo je rovne ako  $TIP si super"
        fi   
    fi


done

if [$TIP -ne $SECRET ]; then
  
echo "vycerpal si pokusy"

fi

# dalsia hra?
echo "chces hrat znova? y/n " PLAY

fi 
