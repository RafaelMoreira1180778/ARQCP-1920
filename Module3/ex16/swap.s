.section .data
	.global num
	.global ptr1
	.global ptr2			# apontador para INT do vec

.section .text
	.global swap
	
	swap:
		pushl %ebp
		movl %esp, %ebp
		
		pushl %ebx
		pushl %edi
		pushl %esi
		
		
		movl num, %eax
		movl ptr1, %edi
		movl ptr2, %esi
		
		loop:
			cmpl $0, %eax			# verifica se todos os numeros foram trocados
			je end
			
			movb (%edi), %cl		# valor de ptr1 em %cl
			movb (%esi), %dl		# valor de ptr2 em %dl
			
			movb %dl, (%edi)		# valor de ptr2 (%dl) passa para ptr1
			movb %cl, (%esi) 		# valor de ptr1 (%cl) passa para ptr2
			
			addl $1, %edi			# incrementa os pointers apra ler o proximo valor no Array ptr1
			addl $1, %esi			# incrementa os pointers apra ler o proximo valor no Array ptr2
			decl %eax				# decrementa o valor do NUM
			
			jmp loop
			
		end:
		
		
		popl %esi
		popl %edi
		popl %ebx
		
		movl %ebp, %esp
		popl %ebp
		
		ret
