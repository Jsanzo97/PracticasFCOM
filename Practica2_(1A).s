	.data
.globl __start
	.text
start:
	addi $s0, $zero, 5 #i
	addi $s1, $zero, 6 #j
	addi $s2, $zero, 3 #g
	addi $s3, $zero, 0 #f
	beq $s0, $s1, else
	addi $s3, $s2, 1
	b seguir
else:
	addi $s3, $s2, -1

seguir:	li $v0 10
	syscall			#exit 