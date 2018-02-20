#! /bin/bash

gcc -o liczbyc liczbyc.c -lm
gcc -o liczbyc64 liczbyc64.c -lm
gcc -o primes primes.c -lm

javac Liczby.java
javac Liczby64.java

scalac Liczbys.scala
scalac Liczbys64.scala

nasm -felf32 liczbyn.asm -o liczbyn.o && ld liczbyn.o -o liczbyn
