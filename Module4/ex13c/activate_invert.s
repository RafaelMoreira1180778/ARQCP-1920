.section .text
	.global activate_bits
	.global activate_invert_bits
	
	activate_bits:
		# prologue
		pushl %ebp
		movl %esp, %ebp
		# -----------------------------------------------------------------------------------------------------------------------------
		pushl %ebx
		pushl %edi

		movl $0, %eax						# limpa eax
		movl $0, %ecx						# limpa ecx
		movl $0, %edx						# limpa edx

		movl 8(%ebp), %eax					# a em eax
		movl 12(%ebp), %ecx					# left em ecx
		movl 16(%ebp), %edx					# right em edx
		movl $-1, %ebx						# -1 em ebx
			
		addl $1, %ecx						# (left+1) em ecx
		cmpl $0, %ecx						# compara (left+1) com 0
		jle end								# impossível se (left+1) <= 0, jmp end

		cmpl $32, %ecx						# compara (left+1) com 32
		jge end								# impossível se (left+1) >= 32, jmp end
			
		SHL %cl, %ebx						# shift de bits para a esquerda (mask), resultado em ebx
		ORL %ebx, %eax						# operação OR com a mask, resultado em eax

		cmpl $0, %edx						# compara right com 0
		jle end								# impossível se right <= 0, jmp end

		cmpl $32, %edx						# compara right com 32
		jge end								# impossível se right >= 0, jmp end
			
		movl %edx, %ecx						# move right para ecx
			
		movl $32, %ecx						# move 32(bits) para ecx
		subl %edx, %ecx						# (right-32) em ecx

		SHR %cl, %ebx						# shift de bits para a direita (mask), resultado em ebx
		ORL %ebx, %eax						# operação OR com a mask, resultado em eax
			
		end:
		popl %edi
		popl %ebx
		# -----------------------------------------------------------------------------------------------------------------------------
		# epilogue
		movl %ebp, %esp
		popl %ebp
		ret

	activate_invert_bits:
		# prologue
		pushl %ebp
		movl %esp, %ebp
		# -----------------------------------------------------------------------------------------------------------------------------
		
		pushl 16(%ebp)					# push de right para a stack
		pushl 12(%ebp)					# push de left para a stack
		pushl 8(%ebp)					# push de a para a stack
		
		call activate_bits				# efetuar a ativação dos bits
		not %eax						# reverter o efeito da função activate_bits

		# -----------------------------------------------------------------------------------------------------------------------------
		# epilogue
		movl %ebp, %esp
		popl %ebp
		ret
