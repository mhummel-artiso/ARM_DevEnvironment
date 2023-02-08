// Name:		Matrikelnummer:
// Name:		Matrikelnummer:
// Datum:

	.file	"aufgabe4.S"
	.text			@ legt eine Textsection fuer PrgrammCode + Konstanten an
	.align	2		@ sorgt dafuer, dass nachfolgende Anweisungen auf einer durch 4 teilbaren Adresse liegen
				@ unteren 2 Bit sind 0
	.global	main		@ nimmt das Symbol main in die globale Sysmboltabelle auf
	.type	main,function
main:
// hier den Code des nicht mehr selbst modifizierenden Codes einfuegen

Halt:
	b	Halt   @ Ergebnis in r1

.Lfe1:
	.size	main,.Lfe1-main

	.data
//; Data definitions
Total:	.word	0
Count_Adr: .word Count
Count:	.word	5
Table:	.word	39, 25, 4, 98, 17  @ 183

	

// End of File

