	.data
Mensaje1: .asciiz "Escriba el radio: "
Mensaje2: .asciiz "Radio: "
Mensaje3: .asciiz "Longitud circunferencia: "
Mensaje4: .asciiz "Area del circulo: "
Mensaje5: .asciiz "Volumen de la esfera: "
pi: .float 3.14
pi2: .float 6.28
vol: .float 1.33
.globl __start
	.text
start:
	
	la $s0, pi
	l.s $f4, 0($s0)	

	la $s0, pi2
	l.s $f5, 0($s0)

	la $s0, vol
	l.s $f6, 0($s0)	

	li $v0, 4
	la $a0, Mensaje1
	syscall

	li $v0, 6
	syscall
	mov.s $f1, $f0 #Radio introducido en $s0

	li $v0, 4
	la $a0, Mensaje2
	syscall

	mov.s $f12, $f1
	li $v0, 2
	syscall

	mov.s $f1, $f12
	mul.s $f12, $f5, $f0
	
	li $v0 11
	li $a0, 10
	syscall

	li $v0, 4
	la $a0, Mensaje3
	syscall
	
	li $v0, 2
	syscall
	
	li $v0 11
	li $a0, 10
	syscall

	li $v0, 4
	la $a0, Mensaje4
	syscall

	mul.s $f8, $f1, $f1
	mul.s $f8, $f12, $f4
	mov.s $f12, $f8

	li $v0, 2
	syscall
	
	li $v0 11
	li $a0, 10
	syscall

	mul.s $f12, $f1, $f1
	mul.s $f12, $f1, $f6
	
	li $v0, 4
	la $a0, Mensaje5
	syscall

	li $v0, 2
	syscall
salir:
	li $v0, 10
	syscall