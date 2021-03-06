from math import sqrt
import sys

prz = int(sys.argv[1])
znalezione = 1  # 2 to liczba pierwsza (1 NIE jest!)

for i in range(3, prz+1, 2):
    flaga = 0
    zakres = int(sqrt(i)+1)
    dzielniki = [i for i in range(2, zakres) if i < 3 or i % 2 != 0]
    for j in dzielniki:
        reszta = i % j
        if reszta == 0:
            flaga += 1
            break
    if flaga == 0:
        znalezione += 1

print("W przedziale do %s znaleziono %s liczb pierwszych" % (prz, znalezione))
