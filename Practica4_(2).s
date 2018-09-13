	.data
Mensaje1: .asciiz "Escriba un numero: "
Mensaje2: .asciiz "El numero de unos que contiene es: "
.globl __start
	.text
__start:
	addi $s2, $zero, 32
	addi $s1, $zero, 0	
	

	li $v0, 4
	la $a0, Mensaje1
	syscall

	li $v0, 5
	syscall
	add $s0, $v0, $zero
	
	li $v0, 4
	la $a0, Mensaje2
	syscall

	add $a0, $s0, $zero
	add $a1, $s1, $zero
	add $a2, $s2, $zero

	jal analisis
	add $t0, $v0, $zero
	
	li $v0 1
	add $a0, $t0, $zero
	syscall
	li $v0 10
	syscall	

analisis:
	addi $s4, $zero, 1
bucle:
	beq $a1, $a2, salir
	andi $s3, $a0, 1
	beq $s3, $s4, contar
	addi $a1, $a1, 1
	srl $a0, $a0, 1
	b bucle
contar:
	addi $t0, $t0, 1
	srl $a0, $a0, 1
	addi $a1, $a1, 1
	b bucle
salir:
	add $v0, $t0, $zero
	jr $ra	

	

	