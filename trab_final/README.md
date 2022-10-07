// PT-BR

O circuito representa duas máquina de estados, uma principal codificada por:

010 = 3, 011 = 3, 100 = 3, 101 = 5, 110 = 8, 111 = 9

onde, a sequência com down = 0, é 3->5->8->9->3->3->3, e a sequência com down = 1, é 3->3->3->9->8->5->3

e uma secundária que gera um clock de 1/3 hz, codificada por:

00 = 0, 01 = 0, 10 = 0, 11 = 1

// EN-US

The circuit represents two state machines, a main one codified by:

010 = 3, 011 = 3, 100 = 3, 101 = 5, 110 = 8, 111 = 9

where, the sequence with down = 0 is 3->5->8->9->3->3->3, and the sequence with down = 1 is 3->3->3->9->8->5->3

and a secondary one that generates a 1/3 hz clock, codified by:

00 = 0, 01 = 0, 10 = 0, 11 = 1
