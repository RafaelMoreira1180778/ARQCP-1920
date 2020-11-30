.section .data

	.global A
	.global B
	.global C
	.global D

.section .text

	.global sum
    .global subtraction
	.global multiplication
    .global division
	.global modulus1
	.global modulus2
	.global powers2a
	.global powers2b
	.global powers3a
	.global powers3b

	sum:
		# prologue
		pushl %ebp
		movl %esp, %ebp

		movl A, %eax		# %eax = A
		movl B, %ecx		# %ecx = B
        addl %ecx, %eax		# %eax = A + B

		# epilogue
		movl %ebp, %esp
		popl %ebp
		
		ret


    subtraction:
    	# prologue
		pushl %ebp
		movl %esp, %ebp

		movl A, %eax		# %eax = A
		movl B, %ecx		# %ecx = B
        subl %ecx, %eax		# %eax = A - B

		# epilogue
		movl %ebp, %esp
		popl %ebp
		
		ret


    multiplication:
    	# prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx

		movl A, %eax		# %eax = A
		movl B, %ecx		# %ecx = B
        imull %ecx, %eax	# %eax = A * B

		# epilogue
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		
		ret


    division:
    	# prologue
		pushl %ebp
		movl %esp, %ebp

		movl A, %eax		# %eax = A
        cdq					# extensao do sinal de A até %edx
        movl B, %ecx		# %ecx = B
        idivl %ecx			# %eax = A / B  (resto em %edx)

		# epilogue
		movl %ebp, %esp
		popl %ebp
		
		ret


    modulus1:
		# prologue
		pushl %ebp
		movl %esp, %ebp
		
		movl C, %eax		# %eax = A
		cmp $0, %eax		# compara o sinal de A com o 0
		jl negative			# salta para o JUMP se o sinal for negativo
		jmp end
		
		negative:
		imull $-1, %eax		# inverte o sinal de A por ser negativo
		jmp end
		 
		end:

		# epilogue
		movl %ebp, %esp
		popl %ebp

		ret


    modulus2:
    	# prologue
		pushl %ebp
		movl %esp, %ebp

		movl A, %eax		# %eax = A
        cdq					# extensao do sinal de A até %edx
        movl B, %ecx		# %ecx = B
        idivl %ecx			# %eax = A / B  (resto em %edx)
        movl %edx, %eax

		# epilogue
		movl %ebp, %esp
		popl %ebp
		
		ret
		

	powers2a:
		# prologue
		pushl %ebp
		movl %esp, %ebp
		
		movl D, %eax
		imull %eax, %eax
		
		#epilogue
		movl %ebp, %esp
		popl %ebp

		ret


	powers2b:
		# prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx
		pushl %edi
		pushl %esi
		
		movl D, %esi			# N repeticoes 2^n
		movl $1, %edi			# iterador
		movl $1, %edx
		movl $2, %ecx
		movl $0, %ebx
		
		potencia_dois:		
			imull %ecx, %edx	# 2*1 (1a vez) / 2*%edx (restantes)
			movl %edx, %ebx		# %ebx guarda o valor a cada iteracao
			
			cmpl %edi, %esi 	# compara o D (%esi) com o Iterador (%edi)
			je end_potencia_dois
			
			addl $1, %edi 		# incrementa o iterador (%edi += 1)
			jmp potencia_dois
			
		end_potencia_dois:
		
		movl $0, %eax
		movl %ebx, %eax
		
		#epilogue
		popl %esi
		popl %edi
		popl %ebx
		movl %ebp, %esp
		popl %ebp

		ret
			
	
	powers3a:
		# prologue
		pushl %ebp
		movl %esp, %ebp
		
		movl D, %eax
		imull D, %eax
		imull D, %eax
		
		#epilogue
		movl %ebp, %esp
		popl %ebp

		ret


	powers3b:
		# prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx
		pushl %edi
		pushl %esi
		
		movl D, %esi			# N repeticoes 2^n
		movl $1, %edi			# iterador
		movl $1, %edx
		movl $3, %ecx
		movl $0, %ebx
		
		potencia_tres:		
			
			imull %ecx, %edx	# 3*1 (1a vez) / 2*%edx (restantes)
			movl %edx, %ebx		# %ebx guarda o valor a cada iteracao
			
			cmpl %edi, %esi 	# compara o D (%esi) com o Iterador (%edi)
			je end_potencia_dois
			
			addl $1, %edi 		# incrementa o iterador (%edi += 1)
			jmp potencia_tres
		
		end_potencia_tres:
		
		movl $0, %eax
		movl %ebx, %eax
		
		#epilogue
		popl %esi
		popl %edi
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		
		ret
		
