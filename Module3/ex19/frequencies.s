.section .data
	.global ptrgrades
	.global ptrfreq
	.global num

.section .text
	.global frequencies
		frequencies:
		# prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx
		pushl %esi
		pushl %edi
		# -----------------------------------------------------------------------------------------------------------------------------

		movl $0, %eax								# limpa eax
		movl ptrfreq, %esi							# array de frequências absolutas (inteiros)
		movl num, %ebx								# move o número de notas para ebx
		jmp clearFreqsVec

		clearFreqsVec:
		cmpl $21, %eax								# compara o número de posiçoes lidas com o total de posiçoes do array de freqs (21)
		je start									# se for igual, todas as posições foram limpas
		movl $0, (%esi)								# move 0 para a posiçao atual de esi
		incl %eax									# incrementa o num de posiçoes lidas
		addl $4, %esi								# step up no array de frequencias
		jmp clearFreqsVec

		start:
		cmpl $0, %ebx								# verifica o vetor nulo
		je end

		movl $0, %esi								# limpa esi
		movl $0, %edi								# limpa edi

		movl ptrfreq, %esi							# array de frequências absolutas (inteiros)
		movl ptrgrades, %edi						# array de notas (chars)

		movl $0, %eax								# limpa eax
		movl $0, %ecx								# limpa ecx
		movb $0, %dl								# limpa dls
		jmp grades

		grades:
		cmpl $0, %ebx								# compara o num de posiçoes a ler com 0
		je end 

		movb (%edi), %cl							# move a nota para cl (1 byte)
		jmp freqs

		freqs:
		cmpb %cl, %dl								# compara a nota a incrementar com o index do array de frequencias
		je incAbsoluteFreq							# se igual, aumentar o total de aparecimentos da nota

		addl $4, %esi		
		incb %dl									# aumenta o indice do array de freqs absolutas
		jmp freqs
		
		incAbsoluteFreq:
		addl $1, (%esi)								# incrementa o total de notas para a dada frequencia

		movl ptrfreq, %esi							# reset das posiçoes do array de frequencias
		movb $0, %dl								# reset do indice do array de frequencias
		jmp incGrades

		incGrades:
		incl %edi									# avança uma posição no array de notas
		decl %ebx									# decrementa o num de notas a ler
		jmp grades						

		# -----------------------------------------------------------------------------------------------------------------------------
		end:
		# epilogue
		popl %edi
		popl %esi
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		ret
