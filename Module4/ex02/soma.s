.section .data
	.global n
	
	
.section .text
	.global sum_n
	
	sum_n:
		# prologue
		pushl %ebp
		movl %esp, %ebp
		
		movl 8(%ebp), %edx		# valor inserido e numero de vezes que corre o loop
		movl $0, %eax
	
		loop:
			cmpl $0, %edx		# fim do somatorio
			jl end
			
			addl %edx, %eax		# somatorio
			
			decl %edx			# decrementa o somatorio e o contador de iteracoes
			jmp loop
			
		end:
		
		# epilogue
		movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
		popl %ebp # restore the previous stack frame pointer
		ret
