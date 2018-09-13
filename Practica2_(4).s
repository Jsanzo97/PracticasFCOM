	.data
a:	.asciiz "hola mundo"
c:	.space 80
.globl __start
	.text
start:
	addi $s0, $zero, 0	#i=0
	addi $s1, $zero, 0	#k=0
	la $s2, a
	la $s3, c
bucle:
	add $t0, $s2, $s0	#cadena a
	lb $t0, 0($t0)

	add $t1, $s3, $s0	#cadena b
	sb $t0, 0($t1)
	
	beq $t0, $s1, salir
	addi $s0, $s0, 1
	b bucle
salir:
	li $v0 10
	syscall
	