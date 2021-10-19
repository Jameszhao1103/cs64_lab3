# arithmetic.asm
# A simple calculator program in MIPS Assembly for CS64
#

.text
main:
	# read input a
	li $v0, 5
	syscall	

	# read input b
	move $t0, $v0
	li $v0, 5
	syscall

	move $t1 $v0
	sub $t3 $t0 $t1

	# since 128 is 2^7, we can shift $t3 by 7 times
	sll $t3 $t3 7
	li $t4 32
	add $t3 $t3 $t4
	

	li $v0 1
	move $a0 $t3
	syscall
	
exit:
	li $v0, 10
	syscall