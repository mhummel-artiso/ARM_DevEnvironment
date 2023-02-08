// Name:		Matrikelnummer:
// Name:		Matrikelnummer:
// Datum:

	.file	"aufgabe2.S"
	.text			@ legt eine Textsection fuer PrgrammCode + Konstanten an
	.align	2		@ sorgt dafuer, dass nachfolgende Anweisungen auf einer durch 4 teilbaren Adresse liegen
				@ unteren 2 Bit sind 0
	.global	main		@ nimmt das Symbol main in die globale Sysmboltabelle auf
	.type	main,function
main:
	adr	r0, length1
	ldr	r0, [r0]	@ r0=length1
	str	r0, length2	@ length2=lenght1
	
	adr	r1, list1	@r1=list1
	add	r1, r1, #4	@ erster Pointer nach Länge
	adr	r2, plist2	@ r2=list2
	ldr     r2, [r2]
	add	r2, r2, #4
	
loop:	cmp	r0,#0
	beq	done		@ fertig, wenn alle kopiert	
	ldrb	r3, [r1], #4	@ r3=value
	ldr	r1, [r1]	@ nächster Pointer
	str	r3, [r2], #4	@ Wert kopieren
	add     r3, r2, #4
	str	r3, [r2], #4	@ nächsten Pointer setzen
	sub	r0,#1		@ Länge verringern
	b	loop
	
done:	

// Aufgabe 2
sort:    adr	r1,plist2
	 ldr    r1, [r1]
	 add	r1, #4
	 
	mov 	r2, #0		@ sortierflag	
	ldr	r0, list2  	@ laenge
llist:  subs	r0, r0, #1	@ vergleich der laenge
	cmp	r0, #0
	ble	iter
	
	ldr 	r3, [r1], #4  	@ r3=value
	ldr	r1, [r1]	@ r1=nächste Adresse
	ldr	r4, [r1]	@ r4= value [naechste adr.]
//	sub 	r1, r1, #-4	@ r1=nächste Adresse
//	ldr	r1, [r1]	@ r1=nächste Adresse


	cmp 	r3, r4
	movgt   r5, r3
	movgt   r3, r4
	movgt   r4, r5
	strgt   r3, [r1,#-8]
	strgt   r4, [r1]
	addgt   r2, #1
	b 	llist
	
iter:	cmp	r2, #0
	bne	sort
	
end:	b 	end
	

plist2:  .word   list2

length1:
list1:	 .word  10, 1,list1+4+1*8,2,list1+4+2*8, 8,list1+4+3*8, 3,list1+4+4*8,7,list1+4+5*8,9,list1+4+6*8,6,list1+4+7*8,5,list1+4+8*8,0,list1+4+9*8,4,list1+4+10*8
//	 .word  ((list1ende-list1-4)/8), 1,list1+3*4,2,list1+4*4,8,list1+5*4,3,list1+6*4,7,list1+7*4,9,list1+8*4,6,list1+9*4,5,list1+10*4,0,list1+11*4,4,list1+12*4
	 .space	245*4
	 .space	245*4
list1ende:

length2:
list2:	 .word	10
	 .space	255*4
	 .space	255*4
	
	

		



	
.Lfe1:
	.size	main,.Lfe1-main

// End of File
