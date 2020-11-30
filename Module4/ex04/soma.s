.section .text
	.global sum_smaller
	
	sum_smaller:
		# prologue
		pushl %ebp
		movl %esp, %ebp
	
#		pushl %ebx
#		pushl %edi
#		pushl %esi
		
		movl 8(%ebp), %edx
		movl 12(%ebp), %eax
		movl 16(%ebp), %ecx
		
		
		cmpl %eax, %edx
		jl segmenor
		
		movl %eax, (%ecx)
		jmp conta
		
		segmenor:
			movl %edx, (%ecx)
			
		conta:
			addl %edx, %eax
		
		end:
		
		
#		popl %esi
#		popl %edi
#		popl %ebx

		movl %ebp, %esp
		popl %ebp
	
		ret
