.section .text
	.global count_even
        count_even:
		# prologue
		pushl %ebp
		movl %esp, %ebp
		# -----------------------------------------------------------------------------------------------------------------------------
        pushl %ebx
		pushl %edi
		pushl %esi	

        movl 12(%ebp), %esi                          # move o total de elementos do array para esi
        movl 8(%ebp), %ebx                           # move o endereço de memória do primeiro elemento do array
        movl $0, %edi                                # contador de números pares
        movl $0, %ecx                                # limpa ecx

        loop:
        movl $0, %edx                                # limpa edx
        cmpl $0, %esi                                # compara o número de elementos do array a ler com 0
        je end

        movl $0, %eax                                # limpa eax
        movw (%ebx), %ax                             # move o valor apontado pelo array para si (temp 16bits)
        movw $2, %cx                                 # move 2 para dx (16bits)

        idivw %cx                                    # divide dx:ax por cx

        addl $2, %ebx                                # avança uma posição no pointer
        decl %esi                                    # decrementa o número de elementos a ler

        cmpw $0, %dx                                 # compara o resto da divisão por 2 com 0
        jne loop                                     # se não for igual a 0 então não é par

        incl %edi                                    # assumo que o número é par, então incremento o contador
        jmp loop             

        end:
        movl %edi, %eax
        
        popl %esi
		popl %edi
		popl %ebx
		# -----------------------------------------------------------------------------------------------------------------------------
		# epilogue
		movl %ebp, %esp
		popl %ebp
		ret

