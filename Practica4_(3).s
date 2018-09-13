	.data
Mensaje1: .asciiz "Introduzca un numero: "
Mensaje2: .asciiz "Introduzca el inicio: "
Mensaje3: .asciiz "Introduzca el final: "
Mensaje4: .asciiz "EL numero es: "
.globl __start
	.text
__start:
	li $v0, 4
	la $a0, Mensaje1
	syscall

	li $v0, 5
	syscall
	add $s0, $v0, $zero #Numero introducido en $s0

	li $v0, 4
	la $a0, Mensaje2
	syscall

	li $v0, 5
	syscall
	add $s1, $v0, $zero #Numero introduciod para inicio en $s1 num grande

	li $v0, 4
	la $a0, Mensaje3
	syscall

	li $v0, 5
	syscall
	add $s2, $v0, $zero #Numero introducido para el final en $s2 num pequeño

	li $v0, 4
	la $a0, Mensaje4
	syscall

	sub $s3, $s1, $s2
	addi $s3, $s3, 1	#Crear mascara de n unos
	addi $t0, $zero, 0

bucle1:
	beq $t0, $s3, salir1
	addi $t1, $zero, 0
	ori $t2, $t1, 1
	sll $t2, $t2, 1
	addi $t0, $t0, 1
	b bucle1
	
salir1:	
	

	add $a0, $s0, $zero
	add $a1, $t2, $zero
	
	jal analisis
	
	add $t0, $v0, $zero
	li $v0, 1
	add $a0, $t0, $zero
	syscall

	li $v0, 10
	syscall

analisis:
	and $a0, $a1, $a1
	add $v0, $a2, $zero
	jr $ra





#HACER: DESPLAZAR EL NUM 58 , 1 LUGAR A LA IZQDA , CREAR MASCARA DE J-I+1 UNOS
#PARA CREAR LA MASCARA PARTIMOS DEL NUMERO 0 , HACEMOS OR CON EL 1 Y DESPLAZAMOS 
#UN LUGAR , UN NUEVO OR CON EL 1 Y ASI N VECES PARA HACER MASCARA DE N UNOS


