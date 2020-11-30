.section .data
	.equ ADRESS_OFFSET_Z, 8
	.equ ADRESS_OFFSET_A, 28

.section .text
	.global fun1
	.global fun2
	.global fun3
	.global fun4

	fun1:
	# prologue
	pushl %ebp
	movl %esp, %ebp
	# -----------------------------------------------------------------------------------------------------------------------------

	movl $0, %ecx									# limpa ecx

	movl 8(%ebp), %ecx								# move s para ecx
	movl (%ecx), %eax								# move x para eax

	# -----------------------------------------------------------------------------------------------------------------------------
	# epilogue
	movl %ebp, %esp
	popl %ebp
	ret

	fun2:
	# prologue
	pushl %ebp
	movl %esp, %ebp
	# -----------------------------------------------------------------------------------------------------------------------------

	movl $0, %ecx									# limpa ecx

	movl 8(%ebp), %ecx								# move s para ecx
	movl ADRESS_OFFSET_A(%ecx), %eax				# move z para eax

	# -----------------------------------------------------------------------------------------------------------------------------
	# epilogue
	movl %ebp, %esp
	popl %ebp
	ret

	fun3:
	# prologue
	pushl %ebp
	movl %esp, %ebp
	# -----------------------------------------------------------------------------------------------------------------------------

	movl $0, %edx									# limpa edx
	movl $0, %ecx									# limpa ecx

	movl 8(%ebp), %ecx								# move s para ecx
	addl $ADRESS_OFFSET_A, %ecx						# avança 2bytes posições em s
	movl %ecx, %eax									# move o endereço de z para eax

	# -----------------------------------------------------------------------------------------------------------------------------
	# epilogue
	movl %ebp, %esp
	popl %ebp
	ret

	fun4:
	# prologue
	pushl %ebp
	movl %esp, %ebp
	# -----------------------------------------------------------------------------------------------------------------------------

	movl $0, %edx									# limpa edx
	movl $0, %ecx									# limpa ecx

	movl 8(%ebp), %ecx								# move s para ecx
	movl ADRESS_OFFSET_Z(%ecx), %edx				# move a struct b do s para edx
	movl (%edx), %eax								# move x da struct b para eax

	# -----------------------------------------------------------------------------------------------------------------------------
	# epilogue
	movl %ebp, %esp
	popl %ebp
	ret
