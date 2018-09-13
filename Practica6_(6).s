	.data
Mensaje1: .asciiz "Escriba el cateto 1: "
Mensaje2: .asciiz "Escriba el cateto 2: "
Mensaje3: .asciiz "La hipotenusa mide: "
.globl __start
	.text
start:
	li $v0, 4
	la $a0, Mensaje1
	syscall

	li $v0, 6
	syscall
	mov.s $f1, $f0 #Cateto 1 introducido en $s0

	li $v0, 4
	la $a0, Mensaje2
	syscall

	li $v0, 6
	syscall
	mov.s $f2, $f0 #Cateto 2 introduciod para inicio en $s1 num grande

	li $v0, 4
	la $a0, Mensaje3
	syscall
	
	mul.s $f1, $f1, $f1
	mul.s $f2, $f2, $f2
	add.s $f3, $f1, $f2
	sqrt.s $f12, $f3	

	li $v0, 2
	syscall

salir:
	li $v0, 10
	syscall