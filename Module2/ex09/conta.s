
.section .data		 
	.global A
	.global B
	.global C
	.global D


.section .text
	.global sum_and_subtract

	sum_and_subtract:
		# prologue
		pushl %ebp
		movl %esp, %ebp

		# callee save
		pushl %ebx

		movsxb A, %eax		# %eax = a
		movsxw B, %ebx		# %ebx = b
		
		movl C, %ecx		# %ecx = c
		addl %ecx, %eax		# %eax = c + a
		
		movl D, %edx		# %edx = d
		subl %edx, %eax		# %eax = a - d
		
		addl %eax, %ebx		# %ebx = a + b
		
		movl %ebx, %eax		# move o resultado para %eax
		cdq					# usamos o CDQ para extender o resultado e como tal, ser apresentado em 64bits,
							# ou seja, edx:eax		
		
		# callee restore
		popl %ebx

        # epilogue
		movl %ebp, %esp
		popl %ebp
		
		ret
		
