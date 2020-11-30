
.section .data		 
	op3:
		.int 3
	op4:
		.int 4
		
	const:
		.int 10
		 
	.global op1
	.global op2
	.global op3
	.global op4


.section .text
	.global sum_v3

	sum_v3:
		# prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx
		
		movl op1, %eax		# coloca o valor inserido em C no registo %eax
		movl op2, %ebx		# coloca o valor inserido em C no registo %ebx
		movl op3, %ecx		# coloca o valor declarado em Assembly no registo %ecx
		movl op4, %edx		# coloca o valor declarado em Assembly no registo %edx
		
		addl %edx, %ecx		# %ecx = %edx + ecx
		subl %ebx, %ecx		# %ecx = %ecx - %ebx
		addl %ecx, %eax		# %eax = % eax + %ecx
		
		# epilogue
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		
		ret


	.global sum_v2 #int sum_v2(void)
	sum_v2:
		# prologue
		pushl %ebp
		movl %esp, %ebp
		
		movl op1, %ecx
		movl const, %eax
		subl %ecx, %eax
		
		movl op2, %edx		
		subl %edx, const
		
		subl const, %eax
		
		# epilogue
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

