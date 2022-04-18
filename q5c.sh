#!/bin/bash
read s
strlen=${#s}
let z=$strlen/2
for (( i=$z-1; i>=0; i-- ));
do
    revstr=$revstr${s:$i:1}
done

for (( i=$z; i<$strlen; i++ ));
do
    revstr=$revstr${s:$i:1}
done
echo $revstr