	.data
Mensaje1: .asciiz "Introduzca un numero: "
Mensaje2: .asciiz "La suma de sus predecesores es: "
.globl __start
	.text
__start:
	add $s1, $zero, 0
	add $s2, $zero, 0
	
	li $v0, 4
	la $a0, Mensaje1
	syscall

	li $v0, 5
	syscall
	add $s0, $v0, $zero

	li $v0, 4
	la $a0, Mensaje2
	syscall
	addi $s0, $s0, 1
bucle:
	beq $s0, $s1, salir 
	add $s2, $s2, $s1
	addi $s1, $s1, 1
	b bucle

salir:
	li $v0, 1
	add $a0, $s2, $zero
	syscall
	
	li $v0 10
	syscall