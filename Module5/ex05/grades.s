.section .text
.global update_grades
	update_grades:
	# prologue
	pushl %ebp
	movl %esp, %ebp
	# -----------------------------------------------------------------------------------------------------------------------------
	pushl %ebx

	.equ ADRESS_OFFSET, 4

	movl 8(%ebp), %edx 										# estudante a modificar
	movl 12(%ebp), %ecx 									# array de notas do estudante

	addl $ADRESS_OFFSET, %edx
	movl $0, %eax											# limpa eax, contador do loop
		
	loop:
	cmpl $10, %eax											# se já tivermos adicionado as 10 notas acabou o loop
	je end 

	movl $0, %ebx											# limpa ebx

	movl (%ecx), %ebx										# move a nota atual para o para ebx
	movl %ebx, (%edx)										# move a nota que está em ebx para o student

	addl $4, %ecx											# avança uma posição no array de notas
	addl $4, %edx											# avança uma posição na estrutura do estudante

	incl %eax												# incrementa o contador do loop
	jmp loop

	end:
	popl %ebx
	# -----------------------------------------------------------------------------------------------------------------------------
	# epilogue
	movl %ebp, %esp
	popl %ebp
	ret
