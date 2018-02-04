#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv)
{
   unsigned int prz, i, j, zakres;
   unsigned int znalezione, reszta, flaga;
   unsigned long testy = 0;

   FILE *fp;


   if (argc < 2) {
        printf("Usage: %s <test_limit_figure>\n",argv[0]);
        exit(1);
   }

   prz = atoi(argv[1]);
   if (prz < 2)  {
        printf("The first tested number should be equal or above 2, entered number was %s \n",argv[1]);
        exit(2);
  }

   znalezione = 1; //2 to liczba pierwsza (1 NIE jest!)

   fp = fopen("primes.txt","w");
   fputs("2\n",fp);

   for (i=3; i <= prz; i++) {
        flaga = 0;
        zakres = (unsigned int) ((i/2)+1);
        for (j=2; j< zakres; j++) {
            testy++;
            reszta = i%j;
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

  printf("W przedziale 0 - %i znaleziono: %i liczb lierwszych, wykonano %lu testów\n", prz, znalezione, testy);

  return 0;

}
