// Loesung Aufgabe 3 und 4 von Termin4 Rechnerarchitektur SS2013
// Name: 	Matrikelnummer:
// Name: 	Matrikelnummer:
// Datum:
	.file "aufgabe3.S"
	.text 		@ legt eine Textsection fuer PrgrammCode + Konstanten an
	.align 2 	@ sorgt dafuer, dass nachfolgende Anweisungen auf einer durch 4 teilbaren Adresse liegen	
			@ unteren 2 Bit sind 0
	.global main 	@ nimmt das Symbol main in die globale Sysmboltabelle auf
	.type main,function
main:
	stmfd sp!, {r4, r5, lr} @ Ruecksprungadresse und Register sichern
kopieren:
@ hier Ihr Programm zum Kopieren einer Byte-Tabelle (je 8Bit) in eine Word-Tabelle (je 32Bit) einfuegen
 


vorzeichen:
@ hier Ihr Programm um die 8Bit-Zahlen auf vorzeichenrichtige 32Bit-Zahlen zu wandeln

	
sortieren:
@ hier Ihr Programm um die vorzeichenrichtige Zahlen in Liste2 zu sortieren

sort:   
	

fertig:
	ldmfd sp!, {r4, r5, pc} @ Ruecksprungadresse und Register

TAB1: .word list1

.Lfe1:
	.size main,.Lfe1-main

// .data-Section fuer initialisierte Daten
	.data
// Erster Wert der Tabelle steht fuer die Anzahl (max. 64) der Werte der Tabelle
length1:
list1: .byte (list1Ende-list1), -9, 8, -7, 6, -5, 4, -3, 2, -1, 0, 127, 128
list1Ende:

// .comm-Section fuer nicht initialisierte Daten
	.comm list2, ((list1Ende-list1)*4) 	@ Speicherbereich mit der Groesse*4 von Liste1 reservieren

// End of File

