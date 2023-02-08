// Name:		Matrikelnummer:
// Name:		Matrikelnummer:
// Datum:

	.file	"aufgabe3.S"
//	.data
	.text			@ legt eine Textsection fuer PrgrammCode + Konstanten an
	.align	2		@ sorgt dafuer, dass nachfolgende Anweisungen auf einer durch 4 teilbaren Adresse liegen
				@ unteren 2 Bit sind 0
	.global	main		@ nimmt das Symbol main in die globale Sysmboltabelle auf
	.type	main,function
main:
// Hier den selbst modifizierenden Code aus Termin 2 ei nfuegen und modifizieren

Halt:
	b	Halt



//; Data definitions
Total:		.word	0
One: 		.word   1 @ The number one
Count:		.word	5
//  Ergebnis: 183
Table:		.word	39, 25, 4, 98, 17


.Lfe1:
	.size	main,.Lfe1-main

// End of File
