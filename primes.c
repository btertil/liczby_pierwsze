#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(int argc, char **argv) {
  
    signed int prz;
		unsigned int i, j, j_incr, zakres;
    unsigned int znalezione, reszta, flaga;
    unsigned long testy = 0;

    FILE *fp;


    if (argc < 2) {
        printf("Usage: %s <test_limit_figure>\n", argv[0]);
        exit(1);
    }

    prz = atoi(argv[1]);
    if (prz < 2)  {
        printf("The first tested number should be equal or above 2, entered number was %s \n", argv[1]);
        exit(2);
    }

    znalezione = 1; //2 to liczba pierwsza (1 NIE jest!)

    fp = fopen("primes.txt","w");
    fputs("2\n",fp);

    for (i=3; i <= prz; i = i + 2) {
        flaga = 0;
        zakres = (unsigned int) sqrt(i) + 1;
        j_incr = 1;
        for (j=2; j< zakres; j = j + j_incr) {
            testy++;
            reszta = i%j;
            if (j == 3) j_incr = 2;
            if (reszta == 0) {
                flaga++;
                break;
            }
        }

        if (flaga == 0) {
            znalezione++;
            fprintf(fp,"%i\n",i);
        }
    }

    fclose(fp);

    printf("W przedziale do %i znaleziono: %i liczb lierwszych, wykonano %lu testów\n", prz, znalezione, testy);
    return 0;

}
