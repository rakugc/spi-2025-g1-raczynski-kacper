#!/usr/bin/bash


#Lista 1

echo "sed -e 'd' /etc/services" >> sed1.txt
echo "sed -e 'ld' /etc/services | more" >> sed1.txt
echo "sed -e '1,10d' /etc/services | more" >> sed1.txt
echo "sed -e '/^#/d' /etc/services | more" >> sed1.txt
echo "sed -e '/regexp/d' /a/b/c/d.file | more " >> sed1.txt
echo "sed -n -e '/regexp/p' /a/b/c/d.file | more" >> sed1.txt
echo "sed -n -e '/POCZATEK/,/KONIEC/p' /moj/plik | more" >> sed1.txt
echo "sed -n -e '/main[[:space:]]*(/,/^}/p' zrodlo.c | more" >> sed1.txt

#Lista 2

echo "sed -e 's/cos/cosinnego' mojplik.txt" >> sed2.txt
echo "sed -e 's/cos/cosinnego/g' mojplik.txt" >> sed2.txt
echo "sed -e '1,10s/zaczarowanie/zablokowanie/g' mojplik2.txt" >> sed2.txt
echo "sed -e '/^$/,/^END/s/wzgórza/góry/g' mojplik3.txt" >> sed2.txt
echo "sed -e 's:/usr/local:/usr:g' mojalista.txt" >> sed2.txt
echo "sed -e 's/<.*>//g' mojplik.html" >> sed2.txt
echo "sed -e 's/<[^>]*>//g' mojplik.html" >> sed2.txt
echo "sed -e 's/.*/ralph powiedział: &/' oryginalnawiadomosc.txt" >> sed2.txt
echo "sed -e 's/\(.*\) \(.*\) \(.*)/Victor \1-\2 Von \3/' mojplik.txt" >> sed2.txt
echo "sed -n -e '=;p' mojplik.txt" >> sed2.txt
echo "sed -n -e '=' -e 'p' mojplik.txt" >> sed2.txt
echo "sed -n -f mojekomendy.sed mojplik.txt" >> sed2.txt

#Lista 3

echo "sed -e 's/$/\r/' myunix.txt > mydos.txt" >> sed3.txt
echo "sed -e 's/.$//' mydos.txt > myunix.txt" >> sed3.txt
echo "sed -e '1!G;h;$!d; forward.txt > backward.txt" >> sed3.txt

#Ćwiczenia
# 1. Usunięcie wierszy zaczynających się od "Dzisiaj"
cat << 'EOF' > cw1.sh
#!/bin/bash
sed '/^Dzisiaj/d' "$1"
EOF

# 2. Wypisanie tylko wierszy zaczynających się od "Dzisiaj"
cat << 'EOF' > cw2.sh
#!/bin/bash
sed -n '/^Dzisiaj/p' "$1"
EOF

# 3. Usunięcie pustych wierszy
cat << 'EOF' > cw3.sh
#!/bin/bash
sed '/^$/d' "$1"
EOF

# 4. Program SED „ins”
cat << 'EOF' > cw4.sh
#!/bin/bash
sed '/kot/{
i poniższy wiersz został zmodyfikowany:
s/kot/pies/g
}' "$1"
EOF

# 5. Program SED „div” rozdzielający plik
cat << 'EOF' > cw5.sh
#!/bin/bash
sed '1,5w first
6,$w last' "$1"
EOF

# 6. Zamiana pojedynczej spacji na początku wiersza na 0,
#    ale tylko jeśli po niej stoi cyfra
cat << 'EOF' > cw6.sh
#!/bin/bash
sed 's/^ \([0-9]\)/0\1/' "$1"
EOF

# 7. Wstawienie dwóch pustych wierszy przed każdym wierszem
cat << 'EOF' > cw7.sh
#!/bin/bash
sed 'G;G' "$1"
EOF

chmod +x cw*.sh
echo "Gotowe: utworzono pliki cw1.sh – cw7.sh"
