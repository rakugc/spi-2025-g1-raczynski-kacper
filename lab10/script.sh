#!/usr/bin/bash

# shellcheck disable=SC2010

#Tabela 1

echo "#Tabela 1" >> l10output.txt
ls -l /etc > foo.txt
ls -l foo.* >> l10output.txt
gzip foo.txt 
ls -l foo.* >> l10output.txt
gzip -d foo.txt.gz
ls -l foo.* >> l10output.txt
echo "___________________________" >> l10output.txt
echo "#Tabela 2" >> l10output.txt
ls -l foo.* >> l10output.txt
gzip foo.txt
ls -l foo.* >> l10output.txt
gzip -tv foo.*
gzip -lv foo.*
gzip -d foo.txt
ls -l foo.* >> l10output.txt
echo "___________________________" >> l10output.txt
echo "#Tabela 3" >> l10output.txt
ls -l /etc >> foo.txt
ls -l foo.* >> l10output.txt
xz foo.txt
ls -l foo.* >> l10output.txt
xz -d foo.txt.xz
ls -l foo.* >> l10output.txt
echo "___________________________" >> l10output.txt
echo "#Tabela 4" >> l10output.txt
mkdir books
mv book1 /books
mv book2 /books
mv book3 /books
cd /books
tar -czf book.tar.gz book1.txt book2.txt book3.txt
tar -cjf book.tar.bz2 book1.txt book2.txt book3.txt
tar -cJf book.tar.xz book1.txt book2.txt book3.txt
echo "___________________________" >> l10output.txt
#gitowanie
git add .
git commit -m 'dodano lab10 z zadaniami'
git push



