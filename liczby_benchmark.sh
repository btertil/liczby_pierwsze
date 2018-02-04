#! /bin/bash

echo
echo
echo ++++++++++++++++++++
echo
echo Program porównuje prędkość liczenia liczb pierwszych
echo implementujących tą samą metodę w różnych językach
echo
echo ++++++++++++++++++++
echo
echo
echo mały przedział 30k
echo
echo "Assembly (NASM):"
time ./liczbyn
echo
echo C:
time ./liczbyc
echo
echo Java:
time java Liczby
echo
echo Scala:
time scala Liczbys
echo
echo ++++++++++++++++++++
echo teraz duży przedział 512k
echo
echo C:
time ./liczbyc64
echo
echo Java:
time java Liczby64
echo
echo Scala:
time scala Liczbys64
echo
