.section .text
.global count_odd_matrix
	count_odd_matrix:
	# prologue
	pushl %ebp
	movl %esp, %ebp
	# -----------------------------------------------------------------------------------------------------------------------------
	pushl %ebx
	pushl %esi
		
	movl $0, %eax									# limpa eax
	movl $0, %ecx									# limpa ecx
	movl $0, %edx									# limpa edx

	movl 8(%ebp), %edx								# move a matriz para edx
	movl 12(%ebp), %ecx								# move o numero de linhas para ecx
		
	loop:
	pushl %ecx										# guarda o valor atual de ecx
	movl 16(%ebp), %ecx								# move o numero de colunas para ecx
	movl (%edx), %ebx								# move a posiçao atual da matriz para ebx
			
	loop2:
	movl (%ebx), %esi								# move o valor da posição atual da matriz para esi
	test $1, %esi									# verifica se é um número par
	jz tmp											# se o resultado do test não for 0, trata-se de um número ímpar

	incl %eax										# assumo um número ímpar
		
	tmp:
	addl $4, %ebx									# avança uma posição da matriz
	loop loop2										# loop de colunas

	addl $4, %edx									# avança uma posição na matriz
	popl %ecx										# restaura o valor de ecx
	loop loop										# loop de linhas

	popl %esi
	popl %ebx
	# -----------------------------------------------------------------------------------------------------------------------------
	# epilogue
	movl %ebp, %esp
	popl %ebp
	ret
