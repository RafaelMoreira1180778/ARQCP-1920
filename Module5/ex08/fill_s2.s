.section .data
	.equ INTJ_OFFSET, 8					# 'salto' para o INT da Structure
	.equ CHARC_OFFSET, 12				# 'salto' para o CHAR da Structure


.section .text
	.global fill_s2
		
	fill_s2:
	# prologue
		pushl %ebp
		movl %esp, %ebp
		
		subl $4, %esp
		
		pushl %ebx
	#	pushl %edi
	#	pushl %esi
		
		movl 8(%ebp), %edx				# endereco da Structure passada por parametro
		movl %edx, -4(%ebp)				# a Structure e passada para para uma variavel temporaria
		movl 12(%ebp), %eax				# o pointer para o Array de Shorts esta em %eax
		movl $3, %ecx					# quantidade de valores nos Arrays de Shorts e de Chars
		
	vetor1:
		cmpl $0, %ecx
		je seguinte
		
		movl (%eax), %ebx				# o 1º valor apontado pelo Array de Shorts e copiado para %ebx
		movl %ebx, (%edx)				# o 1º valor apontado pelo Array de Shorts e copiado para %edx
		
		addl $2, %eax					# leitura do proximo Short do Array
		addl $2, %edx					# sala para o proximo Short a ser escrito
		decl %ecx
		jmp vetor1
		
	seguinte:
		movl $0, %eax
		
	#	movl -4(%ebp), %edx
		movl 16(%ebp), %eax				# o pointer para o INT esta em %eax
		movl %eax, INTJ_OFFSET(%edx)	# o valor INT passado para o parametro e copiado para o %edx
		
	vetor2:	
		movl $0, %eax
		
	#	movl -4(%ebp), %edx
		movl 20(%ebp), %eax
	#	movl %eax, CHARC_OFFSET(%edx)
		addl $CHARC_OFFSET, %edx

		pushl %eax
		pushl %edx
			call strcpy

		
	end:
	
	#	popl %esi
	#	popl %edi
		popl %ebx
		
		addl $4, %esp
		
	# epilogue
		movl %ebp, %esp
		popl %ebp

		ret
		
