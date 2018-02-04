#! /bin/bash

gcc -o liczbyc liczbyc.c
gcc -o liczbyc64 liczbyc64.c

javac Liczby.java
javac Liczby64.java

scalac Liczbys.scala
scalac Liczbys64.scala

nasm -felf64 -o liczbyn.o && ld liczbyn.o -o liczbyn
