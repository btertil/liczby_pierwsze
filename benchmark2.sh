#! /bin/bash
let "test = 0"
clear
echo
echo
echo +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo
echo Program porównuje prędkość liczenia liczb pierwszych
echo implementujących tą samą metodę w różnych językach
echo
echo +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo
echo
for i in 100000 1000000 10000000 100000000
do
echo
echo
let "test++"
echo test $test: dla przedziału 0 - $i
echo +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo
echo C:
time ./liczbycp $i
echo
echo Java:
time java Liczbyp $i
echo
echo Scala:
time scala Liczbysp $i
if [ $i -lt  10000000 ] ; then
	echo
	echo
	echo PHP:
	time php liczbyp.php $i
	echo
	echo Python:
	time python liczbyp.py $i
else
	echo
	echo
	echo "Testy dla PHP i Pythona pominięto z uwagi na zbyt duży przedział (powyżej 1000000)"
fi
echo
echo +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo
echo

done
echo "Gotowe! Liczba wykonanych testów: $test"
echo

