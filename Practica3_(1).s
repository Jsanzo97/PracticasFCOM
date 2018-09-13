	.data
Mensaje1: .asciiz "Escriba un numero entero positivo: "
Mensaje2: .asciiz " El doble es: "
.globl __start
	.text
__start:
	li $v0, 4
	la $a0, Mensaje1
	syscall

	li $v0, 5
	syscall
	
	add $s0, $v0, $zero	
	
	li $v0, 4
	la $a0, Mensaje2
	syscall

	li $v0, 1
	sll $s0, $s0, 1
	add $a0, $s0, $zero
	syscall

	li $v0 10
	syscall