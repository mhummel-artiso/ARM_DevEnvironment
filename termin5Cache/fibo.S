@ Name:		Matrikelnummer:
@ Name:		Matrikelnummer:
@ Datum:

	.file	"fibo.S"
	.text			@ legt eine Textsection fuer PrgrammCode + Konstanten an
	.align	2		@ sorgt dafuer, dass nachfolgende Anweisungen auf einer durch 4 teilbaren Adresse liegen
				@ d.h. die unteren 2 Bit sind 0
	.global	fiborec		@ nimmt das Symbol fiborec in die globale Sysmboltabelle auf
	.type	fiborec,function
fiborec:
	@  Code für fiborec

.Lfe1:
	.size	fiborec,.Lfe1-fiborec
	
	.global	fiboiter	@ nimmt das Symbol fiboiter in die globale Sysmboltabelle auf
	.type	fiboiter,function	
fiboiter:
	@  Code für fiboiter

	
.Lfe2:
	.size	fiboiter,.Lfe2-fiboiter

	.global	fiboreccache	@ nimmt das Symbol fiboreccache in die globale Sysmboltabelle auf
	.type	fiboreccache,function
fiboreccache:
	@  Code für fiboreccache


.Lfe3:
	.size	fiboreccache,.Lfe3-fiboreccache

	.global	fiboitercache	@ nimmt das Symbol fiboitercache in die globale Sysmboltabelle auf
	.type	fiboitercache,function
fiboitercache:
	@  Code für fiboitercache


.Lfe3:
	.size	fiboitercache,.Lfe3-fiboitercache
	
.data	
			.align	2	
fiboliste: 	.space 100*4, 0 
		
.end			@ End of File
