
case class Primes(prz: Int) {

  def this() {
    this(30000)
    println("Uwaga! Domyślny zakres przeszukiwania: 30000")
  }

  private def szukaj(i : Int): Int = {
    for (j <- 2 to math.ceil(i / 2).toInt) { if (i % j == 0) return 0 }
    1 // Jeśli cała pętla nie było ani razu dzielenia bez reszty to kolejna liczba pierwsza
  }
  
  def searchPrimes() = {

    var znalezione = 1 //2 to liczba pierwsza (1 NIE jest liczbą pierwszą bo pierwsze muszą by wieksze od 1)
    for (i <- 3 to this.prz) znalezione += szukaj(i)
    printf("W przedziale 0 - %d naleziono: %d liczb lierwszych\n", this.prz, znalezione)
  }

  def getPrimes : Int = {

    var znalezione = 1 //2 to liczba pierwsza (1 NIE jest liczbą pierwszą bo pierwsze muszą by wieksze od 1)
    for (i <- 3 to this.prz) znalezione += szukaj(i)
    znalezione
  }

  override def toString : String = {
    "W przedziale 0 - %d naleziono: %d liczb lierwszych".format(this.prz, this.getPrimes)
  }

}



object Liczbys extends App {

  val a = new Primes30k(30000)
  println(a.toString)

}
