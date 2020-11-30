.section .data

	.global A
	.global B
    .global C
	.global D

.section .text
	.global compute

	compute:
		# prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx

		movl A, %ecx # move A para ecx
		movl B, %eax # move B para eax
		imull %ecx, %eax # multiplica A e B e guarda o resultado em aex

        movl C, %ecx # move C para ecx
        addl %ecx, %eax # adiciona C ao resultado da multiplicaçao de A e B e armazena o resultado em eax
		cdq # extende o registo edx:eax e mantem o valor de eax
        movl D, %ecx # move D para ecx
		
		cmpl $0, %ecx # compara D com 0
		je isZero # se D for zero realiza este jump

        idivl %ecx # divide (A+B)*C por D. (A+B)*C está armazenado em edx:eax
		jmp end # jump para o fim da função

		isZero:
			movl $0, %eax # caso D seja sero não se pode efetuar a operação, return 0
			jmp end # jump para o fim da função

		end:	
		# epilogue
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		
		ret
