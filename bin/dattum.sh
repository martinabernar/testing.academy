#!/bin/bash

  echo "Dobry den,aky je tvoj cas"

TIME=$(date +%H)


  read -p "zadaj svoj cas:" TIME
  echo "tvoj cas je:" $TIME

if [ $TIME -ge 0 ] && [ $TIME -le 8 ]; then
  echo"Dobre rano $USER je $TIME hodin"

fi
  echo "$TIME"

done
