	.data
Mensaje1: .asciiz "Introduzca un numero: "
Mensaje2: .asciiz "La suma de sus predecesores: "
.globl __start
	.text

start:	
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
	jal suma	
	add $s1, $v0, $zero

	li $v0, 1
	add $a0, $s1, $zero
	syscall
	
	li $v0, 10
	syscall

suma:
	addi $s0, $zero, 0
	addi $v0, $zero, 0
bucle:
	beq $a0, $s0, salir 
	addi $s0, $s0, 1
	add $v0, $v0, $s0
	b bucle
salir: 
	jr $ra
	

	