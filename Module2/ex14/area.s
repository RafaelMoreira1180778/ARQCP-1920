
.section .data		 
	base:
		.int 6
	height:
		.int 5
		
	.global base
	.global height


.section .text
	.global getArea

	getArea:
		# prologue
		pushl %ebp
		movl %esp, %ebp
		
		movl $2, %ecx		# move o valor 2 (necessário para a obtencao da area) para o registo %ecx
		movl base, %eax		# move o valor da base para o registo %eax
		movl height, %edx	# move o valor da altura para o registo %edx
		
		imull %edx, %eax	
		# extends signal to %edx
		cdq	
		idivl %ecx			# %eax = %eax / %ecx
		
		# epilogue
		movl %ebp, %esp
		popl %ebp
		
		ret

