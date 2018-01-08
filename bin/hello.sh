

read -p "kolko je hodin, $USER?" HOUR

if [[ $HOUR -lt 8 ]]; then
  echo "dobre rano $USER"
  elif [[$HOUR -lt 18 ]]; then 
  echo "dobry den $USER"
  else 
  echo "dobry verec $USER"

  fi
  fi

