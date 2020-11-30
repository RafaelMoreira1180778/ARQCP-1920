.section .text
	.global greatest
		greatest:
		# prologue
		pushl %ebp
		movl %esp, %ebp
		# -----------------------------------------------------------------------------------------------------------------------------
		pushl %ebx

		movl 8(%ebp), %eax							# move a para eax

		cmpl 12(%ebp), %eax							# compara a com b
		jge cmpAC									# se a >= b, compara a com c
		jl cmpBC									# se a < b, compara b com c

		cmpAC:
		cmpl %eax, 16(%ebp)							# compara c com a
		jle end										# se c < a então a é o maior dos 3 e dá return de a

		movl 16(%ebp), %eax							# se c > a, então c é o maior dos 3 e dá return de c
		jmp end

		cmpBC:
		movl 12(%ebp), %eax							# move b para eax
		
		cmpl %eax, 16(%ebp)							# compara b com c
		jle end										# se c < b então b é o maior dos 3 e dá return de b

		movl 16(%ebp), %eax							# se c > b então c é o maior dos 3 e dá return de c
		jmp end

		end:
		popl %ebx
		# -----------------------------------------------------------------------------------------------------------------------------
		# epilogue
		movl %ebp, %esp
		popl %ebp
		ret
