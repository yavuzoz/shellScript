#!/bin/bash

#2.Kullanıcıdan alınan iki sayının toplamını hasaplar

echo "First number please"
read number1
echo "Second number please"
read number2
printf "The result is: $(($number1+$number2))\n"


#diger işlemlerde kullanacağım değişkenler

fName="./app.js"
nfName="./main.js"
searched="innerHTML"
allJSfile=`ls ./*.js`

printf "\nmevcut directory'de \n$allJSfile dosyaları vardir"

#3.tum js dosyaları taranır, app.js dosyasi bulunursa icinde gecen innerHTML kelimelerinin toplam sayisi hesaplanir

for eachfile in $allJSfile
do
	if [ $eachfile == $fName ] 
	then
		printf "\n$fName'de bulunan $searched sayisi:  "
		grep -ow $searched $eachfile | wc -l
		printf "\n"
		break
	fi
done

#1. Bulunduğunuz klasorde "apps.js" dosyası varsa adı "main.js olarak degistirilecek
#yoksa yeni "main.js" dosyası olusturulacak

if [ -f "$fName" ]
then
	mv "$fName" "$nfName"
else
	touch "$nfName"
fi


allJSfile=`ls ./*.js`
printf "\nmevcut directory'deki .js uzantılı dosyaların son göncel durumu  \n$allJSfile\nbu sekildedir"
