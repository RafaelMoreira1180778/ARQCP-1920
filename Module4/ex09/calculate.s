.section .text
	.global calculate
        calculate:
		# prologue
		pushl %ebp
		movl %esp, %ebp
		# -----------------------------------------------------------------------------------------------------------------------------
  		pushl %ebx
		pushl %edi
		pushl %esi	

        movl $0, %eax                                       # limpa eax
        movl 8(%ebp), %eax                                  # move a para eax
        addl 12(%ebp), %eax                                 # a+b em eax

        pushl %eax                                          # push de a+b para a stack
        pushl 12(%ebp)                                      # push de b para a stack
        pushl 8(%ebp)                                       # push de a para a stack
        movl $0, %edx                                       # limpa edx
        movb $'+', %dl                                      # move a operação soma para edx (char 1 byte)
        pushl %edx                                          # push da operação para a stack
        call print_result                                   # call da função para imprimir a soma

        # restauro de registos
        popl %eax
        popl 12(%ebp) 
        popl 8(%ebp) 
        popl %edx
        
        movl $0, %ecx                                       # limpa ecx
        movl 12(%ebp), %ecx                                 # move b para ecx
        imull 8(%ebp), %ecx                                 # a*b em ecx

        pushl %ecx                                          # push de a*b para a stack
        pushl 12(%ebp)                                      # push de b para a stack
        pushl 8(%ebp)                                       # push de a para a stack
        movl $0, %edx                                       # limpa edx
        movb $'*', %dl                                      # move a operação soma para edx (char 1 byte)
        pushl %edx                                          # push da operação para a stack
        call print_result

        # restauro de registos
        popl %ecx
        popl 12(%ebp) 
        popl 8(%ebp) 
        popl %edx

        movl $0, %eax                                       # limpa eax
        movl $0, %edi                                       # limpa edi
        movl $0, %esi                                       # limpa esi

        movl 8(%ebp), %esi                                  # move a para esi
        addl 12(%ebp), %esi                                 # a+b em esi

        movl 8(%ebp), %edi                                  # move a para edi
        imull 12(%ebp), %edi                                # a*b em edi

        subl %edi, %esi                                     # esi = esi - edi -> esi = (a+b) - (a*b)
        movl %esi, %eax                                     # move o resultado para eax

        popl %esi
		popl %edi
		popl %ebx
		# -----------------------------------------------------------------------------------------------------------------------------
		# epilogue
		movl %ebp, %esp
		popl %ebp
		ret

