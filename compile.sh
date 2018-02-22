#! /bin/bash

gcc -o liczbycp liczbycp.c -lm
gcc -o liczbyc liczbyc.c -lm
gcc -o liczbyc64 liczbyc64.c -lm
gcc -o primes primes.c -lm

javac Liczbyp.java
javac Liczby.java
javac Liczby64.java

scalac Liczbysp.scala
scalac Liczbys.scala
scalac Liczbys64.scala

nasm -felf64 liczbyn.asm -o liczbyn.o && ld liczbyn.o -o liczbyn
