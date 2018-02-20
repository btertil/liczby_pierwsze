#! /bin/bash

echo
echo ">> liczbyn <<" && time ./liczbyn 
echo 
echo ">> liczbyc <<" && time ./liczbyc 
echo
echo ">> java <<" && time java Liczby
echo
echo ">> scala <<" && time scala Liczbys
echo
echo ">> php <<" && time php liczby.php 
echo
echo ">> python <<" && time python liczby.py
