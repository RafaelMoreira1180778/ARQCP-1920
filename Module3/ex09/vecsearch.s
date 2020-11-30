.section .data
	.global ptrvec
    .global num
    .global x

.section .text
	.global vec_search

	vec_search:

		# prologue
        pushl %ebp    
        movl %esp, %ebp 
        pushl %esi
        pushl %edi
        pushl %ebx

        movl num, %eax # move o número de elementos do array para eax
        cmpl $0, %eax
        je null

        movl $0, %eax # limpa o registo eax
        movl ptrvec,%esi # move o pointer para esi (tem 32bits)
        movl num, %edi # move o número de elementos para edi (temp 32bits)
        movw x, %bx # move o número a encontrar para bx (16bits)

        compare:
        movw (%esi), %cx # move o 'valor' do pointer para cx (16bits)
        cmpw %bx, %cx # compara o valor apontado com x
        je found

        cmpl $0, %edi # compara o número de elementos percorridos com 0
        je null

        decl %edi # a cada iteração decrementa o número de elementos a 'verificar'
        addl $2, %esi # avança para o próximo short do array (2bytes)
        jmp compare

        null:
        movl $0, %eax # caso o return tenha de ser nulo
        jmp end

        found:
        movl %esi, %eax # move o endereço do pointer atual para eax para return
        jmp end

        end:
		# epilogue
        popl %ebx
        popl %edi
        popl %esi
        movl %ebp, %esp
        popl %ebp        
        ret

