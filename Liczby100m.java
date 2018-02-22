public class Liczby100m {


	public static void main(String[] args)
	{
	   int prz, i, j, zakres;
	   int znalezione, reszta, flaga;
	   prz = 100000000;

	   znalezione = 1; //2 to liczba pierwsza (1 NIE jest liczbą pierwszą bo pierwsze muszą by wieksze od 1)


	   for (i=3; i <= prz; i++) {
  		flaga = 0;
	  	zakres = (int) Math.sqrt(i)+1;
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

	    System.out.printf("W przedziale 0 - %d naleziono: %d liczb lierwszych\n", prz, znalezione);
    }

  }
