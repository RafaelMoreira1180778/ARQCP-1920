.section .data
	.global ptrvec
    .global num

.section .text
	.global sum_first_byte

	sum_first_byte:
		# prologue
        pushl %ebp    
        movl %esp, %ebp 
        pushl %ebx
        pushl %esi
        pushl %edi
        # -----------------------------------------------------------------------------------------------------------------------------

        movl num, %ebx                  # move o número de elementos do array para eax
        movl ptrvec, %esi               # move o pointer para esi
        movl $0, %eax                   # soma total
        movl $0, %ecx                   # limpa ecx

        loop:
        cmpl $0, %ebx                   # compara o contador com o número de elementos a ler
        je end                          # se igual chegamos ao fim
        decl %ebx                       # decrementa o numero de elementos a ler

        movl (%esi), %ecx               # move o valor apontado para ecx (32bits)
        movsxb %cl, %edi                # move com 'signal extension' o primeiro bit do número para edi (temp 32bits)
        addl %edi, %eax                 # adiciona o primeiro bit ao contador da soma
        addl $4, %esi                   # step up no pointer
        jmp loop

        null:
        movl $0, %eax                   # limpa eax caso o vetor seja nulo
        jmp end

        # ------------------------------------------------------------------------------------------------------------------------------
        end:
		# epilogue
        popl %edi
        popl %esi
        popl %ebx
        movl %ebp, %esp
        popl %ebp        
        ret

