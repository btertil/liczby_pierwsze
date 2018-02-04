; kompilacja z FASM

format PE64

;segment readable
section '.data'  readable

liczba dw 0;
przywitanie db 'Program zlicza liczby pierwsze w przedziale 0 - 30 000',0ah
przywitanie_end = $-przywitanie

komunikat1 db 'W podanym przedziale znaleziono '
komunikat1_end = $-komunikat1

komunikat2 db ' liczb pierwszych.',0ah
komunikat2_end = $-komunikat2


;segment executable
section '.text' code readable executable

entry $



xor di,di 					;bieżący licznik liczb pierwszych na razie 0
							;ale bedzie 1 na starcie 2 bo to liczba pierwsza (1 NIE jest lp)

mov ecx,przywitanie
mov edx,przywitanie_end
call pisz


inc di 						;za 2 bo liczba 2
mov si,30000d 				;tyle ma być sprawdzonych liczb




spr_loop:

mov bp,2					 ;pierwszy dzielnik to 2

spr:						 ;pętla sprawdzania pojedynczej liczby
mov ax,si					 ;sprawdzana liczba do ax
mov bx,si
shr bx,1
inc bx

xor dx,dx					 ;zerowanie poprzedniej reszty w dx
div bp						 ;ax=ax/bp (dx=0) reszta z dzielenia do dx
or dx,dx					 ;or ustawi flagę ZF na 1 gdy wynik był 0 <- to pytanie czy dx 
;jest 0
jz dalej					 ;jeśli podzieliła się bez reszty to na pewno nie jest pierwsza
inc bp						 ;jeśli jest reszta to zwiększ dzielnik żeby sprawdzić czy zawsze 
;jest reszta
;cmp bp,si					 ;spr czy dzielnik nie będzie już przez samą siebie
cmp bp,bx					 ;wystarczy połowa zakresu
jb spr 						 ;bo to oznacza że pierwsza


pierwsza:
inc di						 ;jeśli liczba pierwsza to zwiększ licznik znalezionych w di

dalej:
dec si						 ;po sprawdzeniu każdej liczby zmniejszamy licznik aż będzie 2 (bo 
							 ;3 to pierwsza/ostatnia sprawdzana)
cmp si,2
jg spr_loop




;wypisujemy komunikat1

mov ecx,komunikat1
mov edx,komunikat1_end
call pisz


;teraz trzeba przekształcić liczbę z di n ASCI i zapisać do bufora
;DI ma liczbę znalezionych liczb pierwszych

mov ax,di									 ;do ax liczba z di
mov bp,10d									 ;dzielenie przez 10, reszty to poszczególne rzędy wielkości
lea esi,[komunikat1+komunikat1_end]			 ;si wskazuje na ostatni element w buforze bo rzędy liczby są liczone wspak
mov byte [esi]," " 							;od razy wpisać do bufora kod ASCI spacji na koniec stringa
xor ecx,ecx 								;licznik wpisanych cyfr do bufora, cały ecx bo potem potrzeba mieć 0 na starszych bitach
dec esi 									;cofam przed spacje
inc ecx 									;i od razy zwiększamy licznik za spację

konwersja:
xor dx,dx									;zeruję poprzednią resztę z dzielenia
div bp										;ax=ax/bp(10), reszta w dl
or dl,30h									;reszta w dl konwertowana do ASCI
mov byte [esi],dl							;zapianie w buforze
inc cl										;zwiększam licznik wpisanych cyfr żeby potem wiedzi
											;ile wyświetlić
dec esi									;cofam się w buforze żeby wyświetlać w odwrotnej kolejności niż zapisywałem
test ax,ax 								;sprawdzam czy ax bylo zerem ale nie chcę zmieniać wartości
										;ax bo będzie następne dzielenie
jnz konwersja


lea edx,[ecx-1]					;ile znaków to wyświetlenia, -1 bo w ostatniej pętli nie 
								;wykorzystane inc cl
lea ecx,[esi+1] 				;jeśli zapisane wszystkie liczby to wyświetlam ile znaleziono 
								;+1 bo w ostatniejpętli było niewykorzystane dec esi

call pisz

mov ecx,komunikat2
mov edx,komunikat2_end
call pisz

exit:

mov ax,1						 ;zakończ
xor bx,bx						 ;exitcode
int 80h


pisz:
;dx i cx ma być ustawione

mov ax,4
xor bx,bx
inc bx
int 80h

ret

