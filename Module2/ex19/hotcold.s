.section .data

	.global current
	.global desired

.section .text
	.global needed_time

	needed_time:
		# prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx

		# start from right to left

		movw current, %ax # move a temperatura atual para ax (16 bits)
		movw desired, %cx # move a temperatura desejada para cx (16 bits)

        cmpw %ax,%cx # compara as duas temperaturas
		jg increaseTemp # jump caso tempDesejada > tempAtual
		jl decreaseTemp # jump caso tempDesejada < tempAtual

		movl $0, %eax # caso as temperaturas sejam iguais o return é de 0 segundos

		increaseTemp:
			movw $120, %bx # 120 segundos para aumentar 1 grau colocados em bx
			subw %ax, %cx # obtém a diferença de temperatura em graus (atual - desejada)
			imulw %cx, %bx # multiplica a diferença em graus pelos segundos necessarios para aumentar cada grau
			movsxw %bx, %eax # move o resultado para eax para dar return
			jmp end # jump final para o fim da função


		decreaseTemp:
			movw $180, %bx # 180 segundos para diminuir 1 grau colocados em bx
			subw %cx, %ax # obtém a diferença de temperatura em graus (desejada - atual)
			imulw %ax, %bx # multiplica a diferença em graus pelos segundos necessarios para diminuir cada grau
			movsxw %bx, %eax # move o resultado para eax para dar return
			jmp end # jump final para o fim da função

		end:
		# epilogue
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		
		ret
