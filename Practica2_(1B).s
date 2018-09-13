	.data
.globl __start
	.text
start:
	addi $s0, $zero, 1
	addi $s1, $zero, 10
	
bucle:
	beq $s0, $s1, salir
	addi $s0, $s0, 1
	b bucle
salir:
	li $v0 10
	syscall	