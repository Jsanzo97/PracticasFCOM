	.data
.globl __start
	.text
start:
	addi $s3, $zero, 10
	addi $s1, $zero, 0
	addi $s5, $zero, 0
bucle:
	beq $s3, $s1 salir
	add $s5, $s5, $s3
	add $s3, $s3, -1
	b bucle
salir:
	li $v0 10
	syscall