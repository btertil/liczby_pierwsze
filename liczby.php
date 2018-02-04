<?php

$prz = 30000;
$znalezione = 1; //2 to liczba pierwsza (1 NIE jest!)


   for ($i=3; $i <= $prz; $i++) {
        $flaga = 0;
	$zakres = ($i/2)+1;
        for ($j=2; $j< $zakres; $j++) {
            $reszta = $i%$j;
            if ($reszta == 0) {
		$flaga++;
		break;
	    }
        }

	if ($flaga == 0) {
		$znalezione++;
	}
  }	

  echo "W przedziale 0 - $prz znaleziono: $znalezione liczb pierwszych";

?>
