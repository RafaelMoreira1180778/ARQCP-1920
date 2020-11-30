
.section .data		 
	.global op1
	.global op2


.section .text
	.global test_flags

	test_flags:
		# prologue
		pushl %ebp
		movl %esp, %ebp
		
			
		movl op1, %eax  			# %eax = op1
		movl op2, %ecx  			# %ecx = op2
		
		addl %ecx, %eax
		jc flag_activated 		# verifica se a carry flag foi alterada para 1
		jo flag_activated 		# verifica se a overflow flag foi alterada para 1
		
		movl $0, %eax  			# se nunhuma das flags foi ativada, %eax = 0
		jmp end    				# salta para o fim do codigo

	flag_activated:   			# se alguma das flags for alterada
		movl $1, %eax  			# %eax = 1

	end:

        # epilogue
		movl %ebp, %esp
		popl %ebp
		
		ret
		
