	.data
c:	.word 1 2 4 3 3 3 8 7 
.globl __start
	.text
start:
	addi $s0, $zero, 1
	addi $s1, $zero, 8
	la $s2, c
bucle:
	sll $t0, $s0, 2		#nos deplazamos por el vector de 4 en 4
	add $t1, $s2, $t0 	#guardamos las direcciones , es decir , c,c+4,c+8,c12 , donde estan los datos
	lw $t2, 0($t1)

	beq $t2, $s1, salir
	addi $s0, $s0, 1
	b bucle
salir:
	li $v0 10
	syscall