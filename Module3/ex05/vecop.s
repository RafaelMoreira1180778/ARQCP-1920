.section .data

	.global ptrvec
    .global num

.section .text
	.global vec_sum
    .global vec_avg

	vec_sum:
		# prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx
		
        movl ptrvec, %ebx # pointer para o array de inteiros
        movl num, %ecx # move o numero de posiçoes para um registo

        movl $0, %eax # registo que guarda a soma
        movl $0, %edx # contador de nums array

        iterador:
        cmpl %ecx, %edx # compara as posições contadas com o tamanho do array
        je end # caso o contador seja igual sai do loop

        addl (%ebx), %eax # adiciona o valor do pointer ao registo eax
        
        addl $4, %ebx # incrementa o pointer 
        incl %edx # incrementa a numero de posiçoes lidas
        
        jmp iterador

        end:
		# epilogue
		popl %ebx
		movl %ebp, %esp
		popl %ebp  
        ret

    vec_avg:
		# prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx

        call vec_sum # move a soma dos números dos vetores para eax
        movl num, %ecx # move o número total de elementos para ecx
        movl $0, %ebx # move 0 para ebx

        cmpl %ebx, %ecx # compara o número de elementos do array com 0
        je impossibleDiv # se o num for 0 então é impossível dividir por 0

        cdq # limpa edx de acordo com eax (soma)
        idivl %ecx # divide edx:eax por ecx e o resultado fica em eax
        jmp endavg

        impossibleDiv:
        movl $0, %eax
        jmp endavg
		
        endavg:
		# epilogue
		popl %ebx
		movl %ebp, %esp
		popl %ebp   
        ret
