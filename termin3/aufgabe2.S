// Name:		Matrikelnummer:
// Name:		Matrikelnummer:
// Datum:

	.file	"aufgabe2.S"
	.text		@ legt eine Textsection fuer PrgrammCode + Konstanten an
	.align	2	@ sorgt dafuer, dass nachfolgende Anweisungen auf einer durch 4 teilbaren Adresse liegen
			@ unteren 2 Bit sind 0
	.global	main	@ nimmt das Symbol main in die globale Sysmboltabelle auf
	.type	main,function
main:
	MOV	r0, #1
	MOV	R1, #0x80000000

	ADDS	r2, r0, r1	@ setzt nur das Vorzeichenflag



	bx	lr
.Lfe1:
	.size	main,.Lfe1-main

// End of File
