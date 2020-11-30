.section .data
	.global ptrvec
	.global num

.section .text
	.global array_sort
		array_sort:
		# prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx
		pushl %esi
		pushl %edi
		# -----------------------------------------------------------------------------------------------------------------------------

		movl num, %esi					# move o num de elementos do array para esi (temp 32bits)
		subl $1, %esi					# subtrai 1 ao numElementos do array
		movl $0, %edi					# contador externo

		externalLoop:
		movl ptrvec, %eax				# pointer para o loop externo
		movl ptrvec, %ebx				# pointer para o loop interno

		addl $4, %ebx					# avança uma posição no pointer
		movl $0, %edx					# limpa edx, contador interno

		incl %esi						# incrementa o numElementos do array
		cmp %esi, %edi					# compara o num com o contador externo
		je end							# se igual, salto para o final

		incl %edi						# aumenta o contador externo
		subl $1, %esi					# decrementa o num total de elementos do array

		internalLoop:
		cmp %esi, %edx					# compara o total de elementos do array com o contador interno
		je externalLoop					# efetua segundo loop de sorting

		movl (%eax), %ecx				# move o valor apontado pelo pointer para ecx

		cmp (%ebx), %ecx  				# compara o valor de ebx com ecx
		jb swapPositions				# caso seja menor, dá swap

		addl $4, %eax					# avança no pointer
		addl $4, %ebx					# avança no pointer
		incl %edx						# incrementa o contador interno
		jmp internalLoop

		swapPositions:
		pushl %edx						# guarda o valor de edx
		pushl %ecx						# guarda o valor de ecx

		call swap						# efetua o swap de valores

		popl %ecx						# restaura o valor de ecx
		popl %edx						# restaura o valor de edx

		addl $4, %eax					# avança no pointer
		addl $4, %ebx					# avança no pointer
		incl %edx						# incrementa o contador interno
		jmp internalLoop

		# -----------------------------------------------------------------------------------------------------------------------------
		end:
		# epilogue
		popl %edi
		popl %esi
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		ret

# -----------------------------------------------------------------------------------------------------------------------------

		swap:
		# prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx
		# -----------------------------------------------------------------------------------------------------------------------------

		movl (%ebx), %edx				# move o valor apontado pelo pointer para edx i
		movl (%eax), %ecx				# move o valor apontado pelo pointer para edx i+1

		movl %edx, (%eax)				# move o valor i para i+1
		movl %ecx, (%ebx)				# move o valor i+1 para 1

		# -----------------------------------------------------------------------------------------------------------------------------
		# epilogue
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		ret
		