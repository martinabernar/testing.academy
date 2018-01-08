#!/bin/bash

echo $0
echo $1
echo $2
echo $3
echo $#
echo $@

#ak je pocet parametrov >1, skonci

if [[ $# -gt 1 ]]; then
  echo "nespravny pocet" 1>&2
  exit 1

fi


#ak je spusteny prave s jednym parametrom
if [[ $# -eq 1 ]]; then 
HOUR=$1
else
HOUR=$(date +%k)

read -p "kolko je hodin, $USER?" HOUR
#HOUR=$(date +%k)

fi

  if [ $HOUR -lt 8 ]; then
   echo " dobre rano $USER prave je:" $HOUR hodin

  elif [ $HOUR -lt 18 ]; then
   echo " dobry den $USER  prave je:" $HOUR hodin
  else
   echo " dobry vecer $USER prave je:" $HOUR hodin

  fi

