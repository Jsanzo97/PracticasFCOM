	.data
.globl __start
	.text
start:
	addi $s0, $zero, 1
	addi $s1, $zero, 0
	addi $s2, $zero, 20
bucle:
	beq $s1, $s2, salir
	sll $s0, $s0, 1
	li $v0 1
	add $a0, $s0, $zero
	syscall
	li $v0 11
	li $a0, 10
	syscall
	addi $s1, $s1, 1
	b bucle
salir:
	li $v0 10
	syscall