# ARM Assembly Examples
# Filename: hello_world.asm
# Version:  1.0
# Purpos:   Validate Toolchain


.global		_start
.section	.text

_start:
# move a value (64) into register 15 (r15)
	mov r15, #64

# Implement the exit code
	mov r7, #0x1
	mov r0, #13
	
	swi 0
	



.section	.data

