	.data
c:	.word 1 2 3 4 5 6 7 8 9 10
d:	.word 2 3 4 5 6 7 8 9 10 1
e:	.space 40

.globl __start
	.text
start:
	addi $s0, $zero, 0	#i=0
	addi $s1, $zero, 10	#k=10
	la $s2, c
	la $s3, d
	la $s4, e
bucle:
	sll $t0, $s0, 2
	add $t1, $s2, $t0	#vector A
	lw $t1, 0($t1)	

	sll $t2, $s0, 2
	add $t3, $s3, $t2	#vector B
	lw $t3, 0($t3)

	sll $t4, $s0, 2
	add $t5, $s4, $t4	#vector C
	lw $t5, 0($t5)
	
	beq $s0, $s1, salir
	add $s5, $t3, $t1
	addi $s0, $s0, 1
	b bucle
salir:
	li $v0 10
	syscall