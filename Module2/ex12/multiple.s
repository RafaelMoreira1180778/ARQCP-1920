.section .data
	.global B
	.global A

.section .text
	.global isMultiple

	isMultiple:
		# prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx

		movl $0, %ebx # move 0 para o registo ebx
		movl A, %eax # move A para o registo eax
		movl B, %ecx # move B para o registo ecx

		cmpl %ebx, %ecx # compara B com A
		je divisorEqualsZero # jump se o valor de B for 0 (divisor)
		cdq # cdq para incrementar edx:eax mantendo o valor de A (signed div)
		divl %ecx # divisão de edx:eax/ecx

		cmpl %ebx, %edx # compara edx(resto) com 0
		je remainderEqualsZero # jump se o resto for 0
		movl $0, %eax # assumindo que o resto não é 0, não é um múltiplo, return de 0
		jmp end # jump final

		divisorEqualsZero:
			movl $0, %eax # se o divisor for 0, não se pode efetuar a divisao, return de 0
			jmp end # jump final

		remainderEqualsZero: 
			movl $1, %eax # se o resto for 0, return de 1 (multiplo)

		end: # jump final para o return

		# epilogue
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		
		ret
