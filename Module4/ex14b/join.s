.section .text
	.global join_bits
	
	join_bits:
		# prologue
		pushl %ebp
		movl %esp, %ebp
	
		pushl %ebx
	#	pushl %edi
	#	pushl %esi
		
		movl 8(%ebp), %ebx		# bits a guardar de 0 a POS
		movl 12(%ebp), %edx		# bits a guardar de POS+1 a 32
		movb 16(%ebp), %cl		# posicao
		movl $1, %eax			# valor do "salto" para cada SHIFT
		
		sal %cl, %eax			# shift do numero $1, %cl posicoes para a esquerda
		subl $1, %eax			# retira 1 a mascara
		sal $1, %eax			# shift 1 bit para a esquerda
		addl $1, %eax			# adiciona 1 a mascara
		
		andl %eax, %ebx			# numero AND mascara - guarda os bits do numero de 0 a POS
		notl %eax				# nega a mascara
		andl %eax, %edx			# numero2 AND mascara - guarda os bits de POS+1 a 32

		orl %ebx, %edx			# junta os 2 conjuntos de bits

		movl %edx, %eax			# retorno
	end:
		
	#	popl %esi
	#	popl %edi
		popl %ebx

		movl %ebp, %esp
		popl %ebp
	
		ret
