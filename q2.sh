#!/bin/bash
while read line
do
if [[ ! -z $line ]]
then
    s=( ${line[@]//'~'/ })
    s1=($(echo "${s[@]}" | cut -d. -f2))
    s2=($(echo "${s[@]}" | cut -f1 -d.))
    echo ${s1[@]} "once said," \"${s2[@]}\" >>speech.txt
fi
done <quotes.txt