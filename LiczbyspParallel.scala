import scala.annotation.tailrec


object LiczbyspParallel {

    def main(args: Array[String]): Unit =  {

        val default = 30000
        val maxBound = try {
            args(0).toInt
        } catch {
            case _: java.lang.ArrayIndexOutOfBoundsException => println(s"NOTE! Using default range $default"); default
        }
        

        def isPrime(n: Int): Boolean = {

            assert(n > 2, "Nie można sprawdzać liczby mniejszej lub równej niż 2")
            val enough = math.sqrt(n).toInt + 1

            @tailrec
            def check(step: Int = 2, incr: Int = 2): Boolean = {
                if (step > enough) true; else
                if (n % step != 0) check(step+incr) else false
            }

            check(incr=1)
        }


        def timeIt[R](block: => R): R = {

            val startTime = System.currentTimeMillis()
            val retVal = block
            val endTime = System.currentTimeMillis()

            println(s"Execution time: ${(endTime - startTime) / 1000.toDouble} s")
            retVal

        }

        val zakres = (3 to maxBound).toVector
        val found = timeIt{zakres.par.count(isPrime) + 1}

        println(s"W przedziale do $maxBound znaleziono $found liczb pierwszych")


    } // main


}

