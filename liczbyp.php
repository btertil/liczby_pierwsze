<?php

$prz = $argv[1];
$znalezione = 1; //2 to liczba pierwsza (1 NIE jest!)


for ($i=3; $i <= $prz; $i++) {
    $flaga = 0;
    $zakres = floor(sqrt($i)) + 1;
    $j_incr = 1;
        for ($j=2; $j< $zakres; $j = $j + $j_incr) {
            $reszta = $i%$j;
            if ($j == 3) $j_incr = 2;
            if ($reszta == 0) {
                $flaga++;
                break;
            }
        }

    if ($flaga == 0) {
        $znalezione++;
    }
} 

echo "W przedziale do $prz znaleziono $znalezione liczb pierwszych\n";

?>
