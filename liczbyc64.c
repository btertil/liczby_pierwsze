#include <stdio.h>
#include <math.h>

int main(void)
{
   unsigned int prz, i, j, zakres;
   unsigned int znalezione, reszta, flaga;
   prz = 512000;

   znalezione = 1; //2 to liczba pierwsza (1 NIE jest liczbą pierwszą bo pierwsze muszą by wieksze od 1)

   for (i=3; i <= prz; i++) {
        flaga = 0;
        zakres = (unsigned int) sqrt(i)+1;
        for (j=2; j<zakres; j++) {
            reszta = i%j;
            if (reszta == 0) {
                flaga++;
                break;
            }
        }

        if (flaga == 0) {
            znalezione++;
        }

   }

    printf("W przedziale 0 - %i naleziono: %i liczb lierwszych\n", prz, znalezione);

    return 0;
}



