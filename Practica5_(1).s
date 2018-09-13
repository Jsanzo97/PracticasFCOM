	.data
a:	.word 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 
.globl __start
	.text
start:
	addi $s0, $zero, 0	#i
	addi $s1, $zero, 0 	#j
	addi $s2, $zero, 4	#m
	la $s3, a

bucle:
	addi $s1, $s1, 1
	beq $s1, $s2, salir
	andi $s0, $s0, 0
	
	b bucle1

bucle1:
	beq $s0, $s1, bucle
	sll $t0, $s0, 2			#4*i		
	sll $t1, $t0, 2			#4*4*i
	add $t1, $s3, $t1		#A+4*4*i
	
	sll $t2, $s1, 2			#4*j
	add $t3, $t1, $t2		#A+4*i*4+4*j
	lw $t4, 0($t3)			#t4 guarda elemento ij

	sll $t0, $s1, 2			#4*j
	sll $t1, $t0, 2			#4*4*j
	add $t1, $s3, $t1		#A+4*j*4 , m=4

	sll $t2, $s0, 2			#4*i
	add $t6, $t1, $t2		#A+4*j*4+4*i
	lw $t5, 0($t6)			#t5 guarda el elemento ji
	
	add $s4, $t4, $zero
	sw $t5, 0($t3)
	sw $s4, 0($t6)

	addi $s0, $s0, 1
	b bucle1
salir:
	li $v0, 10
	syscall
