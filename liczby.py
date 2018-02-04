prz = 30000
znalezione = 1 #2 to liczba pierwsza (1 NIE jest!)

for i in range(3,prz+1):
        flaga = 0
	zakres = int((i/2)+1)
        for j in range (2,zakres):
                reszta = i%j
                if (reszta == 0):
                        flaga += 1
                        break
        if (flaga == 0):
                znalezione += 1

print ("W przedziale 0 - %s znaleziono: %s liczb pierwszych % (prz, znalezione))
