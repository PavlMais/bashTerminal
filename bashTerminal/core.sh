#! usr/bin/bash

if [ ! -d modules/ ]; then
  mkdir modules
fi

if [ ! -f modules/help.sh ]; then
  touch modules/help.sh
fi





  echo "Modules not exist, please add modules on 'modulse/' directory"
files=(modules/*)
allApps=0

for n in "${files[@]}" 
do
  echo "$(($allApps + 1)) > $n " 
  cat $n | grep Description
  echo ""  
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
