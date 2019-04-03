#! usr/bin/bash
files=(modules/*)
i=1
for n in "${files[@]}" 
do
  echo "$i > $n " 
  cat $n | grep desc
  i=$(( $i + 1 )) 
done 

read sel

source ${files[$sel + 1]]}


