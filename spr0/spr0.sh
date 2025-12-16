#!/usr/bin/bash

who >>z1.txt

lspci >>z2.txt

lscpu >z3.txt

whereis vim >z4.txt

whereis gzip >>z4.txt

mkdir z5
cp ~/.bash_history z5

mkdir z6
cp /etc/profile.d z6
cp /etc/profile.d/ z6

ls -a /usr/bin >z8.txt

ls -R /usr/share/zoneinfo >z9.txt

mkdir z10
touch pusty.txt | mv pusty.txt z10/
chmod 644 z10/pusty.txt

ls -s new /usr/bin/ >z11.txt

cat /etc/passwd | tail -n 6 >z12.txt

cat /etc/passwd | head -n 12 | tail -n 6 >z13.txt

mkdir -p z14/dokumenty/Linux | mkdir -p LaTeX/lab-{00..09}

mkdir -p z15/zima/grudzien z15/zima/styczen z15/zima/luty z15/wiosna/marzec z15/wiosna/kwiecien z15/wiosna/maj

mkdir z16
cp z15/zima z16 | cp z15/wiosna z16
rmdir -p z16/zima

tree -d /usr/share/zoneinfo >z17.txt

find /usr/share -type d | wc -l >z18.txt

file /usr/bin/killall /usr/bin/vimtutor /usr/bin/strings >z19.txt

mkdir z20
cp /usr/bin/killall z20/
cp /usr/bin/vimtutor z20/
cp /usr/bin/strings z20/

tar -cf z21.tar z21/

tar -tf z21.tar >z22.txt

mkdir z23
tar -xf z21.tar -C z23/

mkdir z24 | cp z21 z24/
tar -cjf z21.tar.bz2 z24/z21/

mkdir z25 | cp z21 z25/
tar -cJf z21.tar.xz z25/z21/

mkdir z26 | cp z21 z26/
tar -cJf pliki.tar.xz z26/z21

mkdir z27 | cp z21 z27/
tar -cjf pliki.tar.bz2 z27/z21

cat /etc/services | grep 'service' >z28.txt

cat /etc/nanorc | grep 'include' >z29.txt

cat /etc/nanorc | grep 'sens' >z30.txt

cat /etc/nanorc | grep -v 'sens' >z31.txt

grep -rl "kernel" /usr/include >z32.txt

find /usr/bin -type f -name '*ch*' >z33.txt

find /usr/bin -type f -size +100k >z34.txt

find /usr/bin -type f -size -50k >z35.txt

find /usr/bin -type f -size +50k -size -100k >z36.txt

find /usr/bin -type f -name '*zip*' -exec cp {} . \; >z37.txt

find /usr/share/doc -type d >z38.txt
