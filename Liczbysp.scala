
case class Primes(prz: Int) {

  def this() {
    this(30000)
    println("Uwaga! Domyślny zakres przeszukiwania: 30000")
  }

  private def szukaj(i : Int): Int = {
		var j_incr = 1
    for (j <- 2 to math.ceil(math.sqrt(i)).toInt by j_incr) {
			if (j == 3) j_incr = 2
			if (i % j == 0) return 0 
		}
    1 // Jeśli cała pętla nie było ani razu dzielenia bez reszty to kolejna liczba pierwsza
  }
  
  def searchPrimes() = {

    var znalezione = 1 //2 to liczba pierwsza (1 NIE jest liczbą pierwszą bo pierwsze muszą by wieksze od 1)
    for (i <- 3 to this.prz) znalezione += szukaj(i)
    printf("W przedziale do %d znaleziono: %d liczb lierwszych\n", this.prz, znalezione)
  }

  def getPrimes : Int = {

    var znalezione = 1 //2 to liczba pierwsza (1 NIE jest liczbą pierwszą bo pierwsze muszą by wieksze od 1)
    for (i <- 3 to this.prz) znalezione += szukaj(i)
    znalezione
  }

  override def toString : String = {
    "W przedziale do %d znaleziono: %d liczb lierwszych".format(this.prz, this.getPrimes)
  }

}



object Liczbysp extends App {

  val a = new Primes(args(0).toInt)
  println(a.toString)

}
