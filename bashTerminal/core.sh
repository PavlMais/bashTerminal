#! usr/bin/bash

if [ ! -d modules/ ]; then
  mkdir modules
fi

if [ ! -f modules/help.sh ]; then
  
  echo "Modules not exist, please add modules on 'modulse/' directory"
  touch modules/help.sh
fi





files=(modules/*)
allApps=0

for n in "${files[@]}" 
do
  echo "$(($allApps + 1)) > $n " 
  echo "    $(cat $n | grep Description)"
 

  allApps=$(( $allApps + 1 )) 
done 

while true; do

  read -p "Choise: " sel

  sel=$(($sel - 1))
  if (( $sel == -1 ))
  then
    echo "Exit.."
    break
  fi
  if (( $sel<0 || $sel>=$allApps))
  then 
    

    echo "Error!"
    continue
  fi 
 
  source ${files[$sel]}

done
