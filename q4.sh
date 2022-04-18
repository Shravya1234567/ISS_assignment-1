#!/bin/bash
read s
arr=(${s//,/ })
# Performing Bubble sort 
for ((i = 0; i< ${#arr[@]}; i++))
do
    
    for((j = 0; j<${#arr[@]}-i-1; j++))
    do
    
        if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
            # swap
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}  
            arr[$((j+1))]=$temp
        fi
    done
done

echo "Array in sorted order :"
echo ${arr[*]}