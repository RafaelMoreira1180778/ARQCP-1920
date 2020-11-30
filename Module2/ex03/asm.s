
.section .data
	 const:
		 .int 15
		 
	.global op1
	.global op2
	.global const

.section .text
	.global sum_v2 #int sum_v2(void)

	sum_v2:
		# prologue
		pushl %ebp
		movl %esp, %ebp
# pushl %ebx
		
		movl op1, %ecx		# coloca o valor inserido em C no registo %ecx
		movl const, %eax	# coloca o valor declarado em Assembly no registo %eax
		subl %ecx, %eax		# %eax = const - op1
		
		movl op2, %edx		# coloca o valor inserido em C no registo %edx
# movl const, %ebx
		# nas subtracoes (A - B, vem sub B, A: com resultado em A)
		subl %edx, const	# const = const - %edx
		
# subl %ebx, %eax
		subl const, %eax	# %eax = %eax - const
		
		# epilogue
# popl %ebx
		movl %ebp, %esp
		popl %ebp
		
		ret

	.global sum #int sum(void)
	sum:
		# prologue
		pushl %ebp #save previous stack frame pointer
		
		movl %esp, %ebp #the stack frame pointer for sum function
		movl op1, %ecx #place op1 in ecx
		movl op2, %eax #place op2 in eax
		addl %ecx, %eax #add ecx to eax. Result is in eax
		
		# epilogue
		movl %ebp, %esp #restore the previous stack pointer ("clear" the stack)
		popl %ebp #restore the previous stack frame pointer

