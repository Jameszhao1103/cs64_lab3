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
	#li $v0 5
	#syscall

	move $s0 $v0
	la $a0, Hello
	la $a0, newline
	

	la $a0 Magic

	li $t0 13
	mult $t0 $s0
	mflo $v0
	
	li $v0 1
	move $a0 $t0
	la $a0, End
	la $a0, newline
	syscall

exit:
	li $v0 10
	syscall

