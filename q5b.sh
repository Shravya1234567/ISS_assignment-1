#!/bin/bash
read s
strlen=${#s}
for (( i=$strlen-1; i>=0; i-- ));
do
    revstr=$revstr${s:$i:1}
done
y=$(echo "$revstr" | tr "0-9a-zA-Z" "1-9a-zA-Z_")
echo $y

