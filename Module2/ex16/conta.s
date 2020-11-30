
.section .data		 
	.global num


.section .text
	.global steps

	steps:
		# prologue
		pushl %ebp
		movl %esp, %ebp
		
		movl num, %eax		# move o valor num, declarado em C para o registo %eax
		imull $3, %eax		# $eax = %eax * 3
		
		addl $6, %eax		# %eax = %eax + 6
		
		movl $3, %ecx		# move o valor 3 para o registo %ecx
		
		# extends signal to %edx
		cdq	
		idivl %ecx			# %eax = %eax / 3
# quociente em %eax e %resto é edx
		
		addl $12, %eax		# %eax = %eax + 12
		
		movl num, %ecx		# move o valor num, declarado em C para o registo %ecx
		
		# nas subtracoes (A - B, vem sub B, A: com resultado em A)
		subl %ecx, %eax		# %eax = %eax - num
		
		movl $1, %ecx		# coloca o valor 1 no registo %ecx
		subl %ecx, %eax		# %eax = %eax - 1
		
		
		# epilogue
		movl %ebp, %esp
		popl %ebp
		
		ret

