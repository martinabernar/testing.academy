#!/bin/bash


 
dialog --msgbox "myslim si cislo od 1-20" 15 40   
 
SECRET=6
TIP=0

while [ $TIP -ne $SECRET ]; do
read -p "yadaj tip: " TIP

   if [ $TIP -gt $SECRET ]; then
  dialog --title "message" --msgbox "moje cislo je mensie ako $TIP" 15 40

  else
   if [ $TIP -lt $SECRET ]; then
  dialog --title "message" --msgbox "moje cislo je vascie ako $TIP"  15 40

  else

  dialog --title "message" --msgbox "cislo je rovne ako $TIP si super" 15 40


  fi

fi

done
