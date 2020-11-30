.section .data
	.global ptrvec
    .global num

.section .text
	.global vec_greater20

	vec_greater20:
		# prologue
        pushl %ebp    
        movl %esp, %ebp 
        pushl %esi
        pushl %edi
        pushl %ebx
        # ---------------------------------------------------------------------------------------------------------------------------
        movl num, %eax                    # move o número de elementos do array para eax
        cmpl $0, %eax                     # verifica se o array é nulo
        je null

        movl ptrvec, %esi                 # move o pointer para esi (temp 32bits)
        movl $0, %eax                     # contador de números maiores que 20 / limpa eax
        movl num, %edi                    # move o número de elementos do array para edi (temp 32bits)

        compare:
        cmpl $0, %edi                     # compara o número de elementos a ler com 0
        je end                            # se igual a 0, sem elementos a ler

        movl (%esi), %ecx                 # move o valor apontado para ecx
        cmpl $20, %ecx                    # compara a quantidade de posições percorridas com o total de números do array
        jg bigger20                       # se maior que 20, incrementar o pointer e os contadores

        decl %edi                         # decrementa o número de números do array a ler
        addl $4, %ecx                     # aumento o pointer mas não o contador de numeros maiores que 20
        jmp compare                       # efetuar nova comparação

        bigger20:
        incl %eax                         # incrementa a quantidade de números maiores que 20
        decl %edi                         # decrementa o número de elementos a ler
        addl $4, %ecx                     # avança no pointer
        jmp compare

        null:
        movl $0, %eax # limpa eax pois o return é 0
        jmp end
        # ----------------------------------------------------------------------------------------------------------------------
        end:
        
		# epilogue
        popl %ebx
        popl %edi
        popl %esi
        movl %ebp, %esp
        popl %ebp        
        ret
