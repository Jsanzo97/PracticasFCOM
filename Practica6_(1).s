	.data
p: .float 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 
q: .float 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 2.11
r: .float 3.1 3.2 3.3 3.4 3.5 3.6 3.7 3.8 3.9 3.11
.globl __start
	.text
start:

	addi $s0, $zero, 0
	addi $s1, $zero, 10
	la $s2, q
	la $s3, r
	la $s4, p
bucle:	
	sll $t0, $s0, 2
	add $t1, $s2, $t0
	l.s $f0, 0($t1)
	
	sll $t2, $s0, 2
	add $t3, $s3, $t2
	l.s $f2, 0($t3)
	
	sll $t4, $s0, 2
	add $t5, $s4, $t4
	l.s $f4, 0($t5)

	beq $s0, $s1, salir
	
	mul.s $f6, $f0, $f2 
	s.s $f6, 0($t5)
	
	mov.s $f12, $f6
	
	li $v0, 2
	syscall
	
	li $v0 11
	li $a0, 10
	syscall

	addi $s0, $s0, 1
	b bucle

salir:
	li $v0, 10
	syscall