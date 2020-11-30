
.section .data		 
	.global op1
	.global op2


.section .text
	.global sum2ints

	sum2ints:
		# prologue
		pushl %ebp
		movl %esp, %ebp

		# callee save
		pushl %ebx
				
		movl op1, %ecx		# move o valor op1, declarado em C para o registo %ecx
		movl op2, %ebx		# move o valor op2, declarado em C para o registo %ebx
		
		addl %ecx, %ebx		# %eax = op1 + op2
		movl %ebx, %eax		# move o resultado para %eax
		cdq					# usamos o CDQ para extender o resultado e como tal, ser apresentado em 64bits,
							# ou seja, edx:eax		
		
		# callee restore
		popl %ebx

        # epilogue
		movl %ebp, %esp
		popl %ebp
		
		ret
		
