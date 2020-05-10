# Liczby pierwsze: porównanie benchmark języków
### C vs Java vs Scala vs Python vs PHP (także Assembly fasm & nasm ale tylko w folderze old)

proste programy do obliczania liczby liczb pierszych w zadanych przedziałach
tylko dla udokumentowania kilku snipetów, dla kiku języków. Przy okazji benchmark wydajności dla tych języków (ta sama logika implementowana)

### konieczne komponenty do kompilacji:
* gcc
* nasm, fasm (opcjonalnie dla porównania z Assembly w folderze old)
* java jre
* java sdk (development kit)
* scala
* php
* python


### W celu ściągnięcia plików, kompilacji programów i wykonania benchmarku:
$ git clone https://github.com/btertil/liczby_pierwsze
<br>$ cd liczby_pierwsze
<br>$ chmod +x *.sh
<br>$ ./compile.sh
<br>$ ./benchmark.sh

#### Jeśli kompilujesz na sytemie 32 bitowym, użyj *compile32.sh* zamiast compile.sh (dla Assembly)
