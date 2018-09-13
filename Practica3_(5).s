	.data
Mensaje1: .asciiz "Escriba algo: "
Mensaje2: .asciiz "Cadena copiada= "
Buffer: .space 40
.globl __start
	.text

start:
	li $v0, 4
	la $a0, Mensaje1
	syscall

	li $v0, 8
	la $a0, Buffer
	la $a1, 39
	syscall

	add $a0, $a0, $zero	
	jal mayuscula
	
	li $v0, 4
	la $a0, Mensaje2
	syscall

	li $v0, 4
	add $a0, $a1, $zero
	syscall
	
	li $v0, 10
	syscall

mayusculas:
	
	addi $a1, $zero, 0
	
	add $a1, $a0, $zero
	jr $ra





