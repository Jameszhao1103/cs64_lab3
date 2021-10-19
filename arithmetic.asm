# arithmetic.asm
# A simple calculator program in MIPS Assembly for CS64
#

.text
main:
	# read input a
	li $v0, 5
	syscall	

	# read input b
	move $s0, $v0
	li $v0, 5
	syscall

	move $s1, $v0
	sub $t3 $s0 $s1

	# since 128 is 2^7, we can shift $t3 by 7 times
	sll $t3 $t3 7
	li $t4 32
	add $t3 $t3 $t4
	syscall

	li $v0, 1
	move $a0 $t3
	syscall
	




exit:
	
	li $v0, 10
	syscall