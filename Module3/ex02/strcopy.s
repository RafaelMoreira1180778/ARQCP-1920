.section .data
	.global ptr1			# apontador para CHAR do str1
	.global ptr2			# apontador para CHAR do str2

.section .text
	.global str_copy_porto
	str_copy_porto:
		pushl %ebp
		movl %esp, %ebp
# os pointers para serem comparados tem de estar em 8bits,
# para se comparar a totaldiade do registo e se ignorar o lixo
		
		pushl %edi
		pushl %esi
		
		movl ptr1, %edi
		movl ptr2, %esi
	
		loop:
			movb (%edi), %cl	# faz-se um cast para o tamanho mais
								# pequeno de modo a se evitar o lixo
			movb %cl, (%esi)	# novo array
			
			cmpb $0, %cl		# significa que chegou ao fim
			je loop_end
			
	#		cmpb $118, %cl		# significa que encontrou a letra V
			cmpb $'v', %cl
			je letra_v
			
			jmp iterador		# salta para a letra seguinte
			
			
		iterador:
			addl $1, %edi
			addl $1, %esi
			jmp loop
		
		
		letra_v:
			movb $'b', (%esi)
			jmp iterador
			
		loop_end:
		
		# epilogue
		popl %esi
		popl %edi
		
		movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
		popl %ebp # restore the previous stack frame pointer
		ret
