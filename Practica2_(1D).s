	.data
d:	.word 1 3 5 7 45 4 6 1 2 9 1 3 7 
.globl __start
	.text
start:
	addi $s0, $zero, 0	#i=0
	addi $s1, $zero, 10	#k=10
	la $s2, d
bucle:
	sll $t0, $s0, 2
	add $t1, $s2, $t0
	lw $t2, 0($t1)	

	beq $s0, $s1, salir	#si//s0=s1//salir//(i=k=10)
	addi $s0, $s0, 1	#i=i+1
	sll $t3, $t2, 1
	add $t4, $t3, $zero
	b bucle
salir: 
	li $v0 10
	syscall	