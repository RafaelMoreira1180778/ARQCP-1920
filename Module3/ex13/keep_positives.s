.section .data
	.global ptrvec
	.global num
	
.section .text
	.global keep_positives
	
keep_positives:
	# prologue
	pushl %ebp    
	movl %esp, %ebp 
	
	pushl %esi
	pushl %ebx
		
# -----------------------------------------------------------------------------------------------------------------------------
	
	movl ptrvec, %esi					# move o pointer para esi (temp 32bits)
	movl num, %ebx						# coloca o num de elementos do array em ebx
	cmpl $0, %ebx						# verifica se num=0 (vetor nulo)
	je end								# se sim, salta para o return

	movl $0, %eax						# limpa o registo eax
	movl $0, %ecx						# limpa ecx; indexes do array

	loop:
	cmpl %ecx, %ebx						# compara o num de elementos o array com o contador de indices
	je end								# se igual saltar para o return
	
	movl (%esi), %eax					# coloca o valor apontado em esi (temp 32bits)
	cmpl $0, %eax						# compara o valor em eax com 0
	jl swap								# se menor que 0, efetua a troca pedida
	
	incl %ecx							# assumo que não é, incrementa o contador de indices
	addl $4, %esi					    # incrementa o pointer (4bytes, proximo int)
	jmp loop							
	
	swap:
	movl %ecx, (%esi)					# move o valor de ecx (indice da posiçao atual) para o registo do apontado
	incl %ecx							# incrementa o contador de indices
	addl $4, %esi						# incrementa o pointer (4bytes, proximo int)
	jmp loop							

# -----------------------------------------------------------------------------------------------------------------------------

	end:
	popl %ebx
	popl %esi

	# epilogue
	movl %ebp, %esp
	popl %ebp        
	ret
