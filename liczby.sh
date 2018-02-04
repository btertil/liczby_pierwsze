#! /bin/bash

echo
echo ">> liczbyf <<" && time ./liczbyf 
echo
echo ">> liczbyn <<" && time ./liczbyn 
echo 
echo ">> liczbyc <<" && time ./liczbyc 
echo
echo ">> java <<" && time java Liczby
echo
echo ">> php <<" && time php liczby.php 
echo
echo ">> python <<" && time python liczby.py
