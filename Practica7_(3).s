	.data
Mensaje1: .asciiz "Introduzca el numero que quiera calcular: "
Mensaje2: .asciiz "La serie de Fibonacci es: "
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
		
	add $a0, $s0 $zero
	add $a1, $a0, $zero
	jal fibonacci
	
	li $v0, 1
	add $a0, $s3, $zero
	syscall
	
	li $v0, 10
	syscall



fibonacci:	
	add $s1, $zero, 1
	add $s2, $zero, 0
	
	
	beq $a1, $s1, continuar1
	beq $a1, $s2, continuar0
	beq $a0 , $s1 , salir
	
	add $s1, $zero , 0
	add $s4, $zero, -1
	add $a0, $a0, $s4
	add $s3, $s3, $a1

	jal fibonacci

continuar0:
	li $v0, 1
	addi $a0, $a0, 1
	syscall
	
	li $v0, 10
	syscall

continuar1:
	li $v0, 1
	addi $a0, $a0, 0
	syscall
	
	li $v0, 10
	syscall
	

	
salir:
	jr $ra
	
	li $v0, 1
	add $a0, $s3, $zero
	syscall
	
	li $v0, 10
	syscall