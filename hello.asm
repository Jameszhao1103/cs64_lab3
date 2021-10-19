# hello.asm
# A "Hello World" program in MIPS Assembly for CS64
#
#  Data Area - allocate and initialize variables
.data
	newline: .asciiz "\n"
	Hello: .asciiz "Hello Pandemic World of 2021!"
	Magic: .asciiz "The magic number is "
	End:   .asciiz "!!!"

#Text Area (i.e. instructions)
.text
main:
	# read input number
	li $v0 5
	syscall

	move $s0 $v0

	#print hello message
	li $v0 4
	la $a0 Hello
	syscall

	#new line
	li $v0 4
	la $a0 newline
	syscall
	
	#print magic message
	li $v0 4
	la $a0 Magic
	syscall

	#multiply
	li $t0 13
	mult $t0 $s0
	mflo $t1
	
	#print number
	li $v0 1
	move $a0 $t1
	syscall

	#print the last message
	li $v0 4
	la $a0, End
	syscall

	li $v0 4
	la $a0, newline
	syscall

exit:
	li $v0 10
	syscall

