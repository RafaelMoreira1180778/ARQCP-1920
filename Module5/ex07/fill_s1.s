.section .text
.global fill_s1
	fill_s1:
	# prologue
	pushl %ebp
	movl %esp, %ebp
	# -----------------------------------------------------------------------------------------------------------------------------

	movl $0, %edx								# limpa edx

	movl $0, %ecx								# limpa ecx
	movl 8(%ebp), %edx							# s1 em edx
	movl 12(%ebp), %ecx							# vi em ecx
	movl %ecx, (%edx)							# definir vi em s1

	movl $0, %ecx								# limpa ecx
	movl 16(%ebp), %ecx							# vc em ecx (em cl pois é um char, 1byte)
	addl $4, %edx								# avança de vi para vc
	movl %ecx, (%edx)							# definir vc em s1

	movl $0, %ecx								# limpa ecx
	movl 20(%ebp), %ecx							# vc em ecx (em cl pois é um char, 1byte)
	addl $4, %edx								# avança de vc para vj
	movl %ecx, (%edx)							# definir vj em s1

	movl $0, %ecx								# limpa ecx
	movb 24(%ebp), %cl							# vc em ecx (em cl pois é um char, 1byte)
	addl $4, %edx								# avança de vi para vc
	movb %cl, (%edx)							# definir vc em s1

	# -----------------------------------------------------------------------------------------------------------------------------
	# epilogue
	movl %ebp, %esp
	popl %ebp
	ret
