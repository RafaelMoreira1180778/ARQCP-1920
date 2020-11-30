
.section .data		 
	a:
		.int 6
	b:
		.int 9
	n:
		.int 4
	
	.global i
	.global n
	.global a
	.global b


.section .text
	.global steps

	steps:
		# prologue
		pushl %ebp
		movl %esp, %ebp
		
		# callee save
		pushl %ebx
		pushl %edi
		pushl %esi
		
		movl i, %edi		# limite maximo do somatorio
		movl n, %esi		# iterador do somatorio
		movl $0, %ebx
			
		my_loop:			
			movl %edi, %edx		# movemos o I para %edx para nunca o alterarmos
			imull %edx, %edx	# i²  (resultado em %esi)
			addl %edx, %ebx		# %ebx guarda o valor do i² em cada iteraçao do somatorio
			
			cmpl %edi, %esi 	# compara o N (%esi) com o I (%edi)
			
			je end_my_loop	 	# jump se %esi > %edi  (faz um compare de acordo
								# com o definido JG / JL / JE entre o 1º ser > / < / = ao 2º
			
			addl $1, %edi 		# incrementa o iterador (%edi += 1)
			jmp my_loop	
		end_my_loop:
		
		movl a, %eax			# %eax = 6
		movl b, %ecx			# %ecx = 9
		
		imull %eax, %eax		# A²
		cdq						# extends signal to %edx
		idivl %ecx
		
		imull %ebx, %eax
		
		
		# callee restore
		popl %esi
		popl %edi
		popl %ebx
		
		# epilogue
		movl %ebp, %esp
		popl %ebp
		
		ret
