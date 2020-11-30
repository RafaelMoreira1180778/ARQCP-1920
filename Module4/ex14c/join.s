.section .text
	.global join_bits
	.global mixed_sum
	
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
		
		sal %cl, %eax			# shift do numero POS 1 bit para a esquerda
		subl $1, %eax			# retira 1 a mascara
		sal $1, %eax			# shift 1 bit para a esquerda
		addl $1, %eax			# adiciona 1 a mascara
		
		andl %eax, %ebx			# numero AND mascara - guarda os bits do numero de 0 a POS
		notl %eax				# nega a mascara
		andl %eax, %edx			# numero2 AND mascara - guarda os bits de POS+1 a 32

		orl %ebx, %edx			# junta os 2 conjuntos de bits

		movl %edx, %eax			# retorno
		
	end1:
		
	#	popl %esi
	#	popl %edi
		popl %ebx

		movl %ebp, %esp
		popl %ebp
	
		ret



	mixed_sum:
		# prologue
		pushl %ebp
		movl %esp, %ebp

		subl $8, %esp			# reserva espaço para 2 variaveis locais
	
	#	pushl %ebx
	#	pushl %edi
	#	pushl %esi

		movl 8(%ebp), %eax		# numA
		movl 12(%ebp), %ecx		# numB
		movl 16(%ebp), %edx		# posicao
		
		pushl %edx
		pushl %ecx
		pushl %eax
			call join_bits
		
		addl $12, %esp			# restaura a stack em 12 posicoes - 3 variaveis
		movl %eax, -4(%ebp)		# guarda o numero, do 1o CALL numa variavel local

		movl 8(%ebp), %eax		# numA
		movl 12(%ebp), %ecx		# numB
		movl 16(%ebp), %edx		# posicao
		
		pushl %edx
		pushl %eax
		pushl %ecx
			call join_bits
		
		addl $12, %esp			# restaura a stack em 12 posicoes - 3 variaveis

		movl %eax, -8(%ebp)		# adiciona o numero ao contrario a outra variavel local
		movl -4(%ebp), %eax		# o valor da primeira chamada do CALL e posto em %eax
		addl -8(%ebp), %eax		# soma as duas variaveis locais


	end2:
		
	#	popl %esi
	#	popl %edi
	#	popl %ebx

		movl %ebp, %esp
		popl %ebp
	
		ret

