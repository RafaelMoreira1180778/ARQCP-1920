.section .text
	.global calc
	
	calc:
		# prologue
		pushl %ebp
		movl %esp, %ebp
		
		subl $4, %esp
		pushl %ebx
		pushl %edi
		pushl %esi
		
		movl 8(%ebp), %edi		# variavel A da funcao
		movl 12(%ebp), %ebx		# variavel *B da funcao - pointer
		movl 16(%ebp), %eax		# variavel C da funcao
	#	movl 16(%ebp), %esi
		movl (%ebx), %ecx		# valor numerico da variavel B da funcao
		
		subl %edi, %ecx			# B - A
		movl %ecx, -4(%ebp)		# uso da variavel temporaria em Assembly
								# Z = B - A
								
	#	movl %ecx, %eax
		
		imull -4(%ebp), %eax	# C * Z
		subl $2, %eax			# (C*Z) - 2
		
		end:
		
		
		popl %esi
		popl %edi
		popl %ebx
		addl $4, %esp
		
		movl %ebp, %esp
		popl %ebp
	
		ret
