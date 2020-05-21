#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(int argc, char **argv) {
  
    signed int pr;
    unsigned int prz, i, j, j_incr, zakres;
    unsigned int znalezione, reszta, flaga;
    prz = atoi(argv[1]);

    znalezione = 1; //2 to liczba pierwsza (1 NIE jest liczbą pierwszą bo pierwsze muszą by wieksze od 1)


    for (i=3; i <= prz; i=i+2) {
        flaga = 0;
        j_incr = 1;
        zakres = (unsigned int) sqrt(i) + 1;
        for (j=2; j<zakres; j = j + j_incr) {
            reszta = i%j;
            if (j == 3 ) j_incr = 2;
            if (reszta == 0) {
                flaga++;
                break;
            }
        }

        if (flaga == 0) {
            znalezione++;
        }
   }

    printf("W przedziale do %i znaleziono %i liczb pierwszych\n", prz, znalezione);
    return 0;
    
}
