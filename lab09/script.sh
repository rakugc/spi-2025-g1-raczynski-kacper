#!/usr/bin/bash

# shellcheck disable=SC2010

#Punkt 3

ls /usr/bin | grep zip >> re-3.txt
ls /bin > dirlist-bin.txt 
ls /usr/bin > dirlist-sbin.txt 
ls /sbin > dirlist-sbin.txt
ls /usr/sbin > dirlist-usr-sbin.txt
ls dirlist*.txt >> re-3.txt
grep bzip dirlist*.txt >> re-3.txt
grep -l bzip dirlist*.txt >> re-3.txt
grep -L bzip dirlist*.txt >> re-3.txt

#Punkt 3.2

grep -h '.zip' dirlist*.txt >> re-3.2.txt

#Punkt 3.3

grep -h '^zip' dirlist*.txt >> re-3.3.txt
grep -h 'zip$' dirlist*.txt >> re-3.3.txt
grep -h '^zip$' dirlist*.txt >> re-3.3.txt
grep -h '^.r...a..y..c.a$' /usr/share/dict/polish >> re-3.3.txt

#Punkt 3.4

grep -h '[bg]zip' dirlist*.txt >> re-3.4.txt

#Punkt 3.4.1

grep -h '[^bg]zip' dirlist*.txt >> re-3.4.txt

#Punkt 3.4.2

grep -h '^[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' dirlist*.txt >> re-3.4.2.txt
grep -h '^[A-Z]' dirlist*.txt >> re-3.4.2.txt
grep -h '^[A-Za-z0-9]' dirlist*.txt >> re-3.4.2.txt
grep -h '[A-Z]' dirlist*.txt >> re-3.4.2.txt
grep -h '[-A-Z]' dirlist*.txt >> re-3.4.2.txt

#Punkt 3.4.3

ls /usr/sbin/[ABCDEFGHIJKLMNOPQRSTUVWXYZ]* >> re-3.4.3.txt
echo $LANG >> re-3.4.3.txt

#Punkt 3.5.1
echo "AAA" | grep AAA >> re-3.5.1.txt
echo "BBB" | grep BBB >> re-3.5.1.txt
echo "BBB" | grep AAA >> re-3.5.1.txt
echo "AAA" | grep -E 'AAA|BBB' >> re-3.5.1.txt
echo 'BBB' | grep -E 'AAA|BBB' >> re-3.5.1.txt
echo 'CCC' | grep -E 'AAA|BBB' >> re-3.5.1.txt
echo 'AAA' | grep -E 'AAA|BBB|CCC' >> re-3.5.1.txt
grep -Eh '^(bz|gz|zip)' dirlist*.txt >> re-3.5.1.txt

#Punkt 3.5.2

echo "(55) 12-345" | grep -E '^\(?[0-9][0-9]\)? [0-9][0-9] - [0-9][0-9][0-9]$' >> re-3.5.2.txt
echo '55 12-345' | grep -E '^\(?[0-9][0-9]\)? [0-9][0-9] - [0-9][0-9][0-9]$' >> re-3.5.2.txt
echo 'This works' | grep -E '[[:upper:]][[:upper:][:lower:]]*\.' >> re-3.5.2.txt
echo 'This works' | grep -E '[[:upper:]][[:upper:][:lower:]]*\.' >> re-3.5.2.txt
echo 'this does not' | grep -E '[[:upper:]][[:upper:][:lower:]]*\.' >> re-3.5.2.txt
echo 'this does not' | grep -E '[[:upper:]][[:upper:][:lower:]]*\.' >> re-3.5.2.txt
echo 'This that' | grep -E '^([[:alpha:]]+ ?)+$' >> re-3.5.2.txt
echo 'a b c' | grep -E '^([[:alpha:]]+ ?)+$' >> re-3.5.2.txt
echo 'a b 9' | grep -E '^([[:alpha:]]+ ?)+$' >> re-3.5.2.txt
echo 'abc   d' | grep -E '^([[:alpha:]]+ ?)+$' >> re-3.5.2.txt
echo "(55) 12-345" | grep -E '^\(?[0-9][0-9]\)? [0-9][0-9] - [0-9][0-9][0-9]$' >> re-3.5.2.txt




