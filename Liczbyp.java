public class Liczbyp {

    public static void main(String[] args) {

        int prz, i, j, j_incr, zakres;
        int znalezione, reszta, flaga;
        prz = Integer.parseInt(args[0]);

        znalezione = 1; //2 to liczba pierwsza (1 NIE jest liczbą pierwszą bo pierwsze muszą by wieksze od 1)


        for (i=3; i <= prz; i=i+2) {
            flaga = 0;
            zakres = (int) Math.sqrt(i)+1;
            j_incr = 1;
            for (j=2; j<zakres; j = j + j_incr) {
                reszta = i%j;
                if (j == 3) j_incr = 2;
                if (reszta == 0) {
                    flaga++;
                    break;
                }
            }


            if (flaga == 0) {
                znalezione++;
            }
        }

        System.out.printf("W przedziale do %d znaleziono %d liczb pierwszych\n", prz, znalezione);
    }    
}
