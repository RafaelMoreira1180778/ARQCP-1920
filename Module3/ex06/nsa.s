.section .data
	.global ptr1

.section .text
	.global encrypt

	encrypt:

		# prologue
        pushl %ebp    
        movl %esp, %ebp 
        pushl %ebx

        movl ptr1, %ecx # move o pointer para ecx
        movl $0, %eax # eax é o contador de número de caracteres mudados

        compare:
        movb (%ecx), %bl # move o conteúdo do pointer para um registo de 8 bits

        cmpb $0, %bl # compara 0 com o valor do pointer
        je end # se pointer = 0, enão atingimos o final da string

        cmpb $'a', %bl # compara o valor do pointer com a  
		je stepUpPointer # não modificar nada e incrementar a posição do array

		cmpb $' ', %bl # compara o valor do pointer com Space
		je stepUpPointer # não modificar nada e incrementar a posição do array

        jmp incNumModifiedChars     

        stepUpPointer:
        incl %ecx # aumenta a posição do array            
        jmp compare

        incNumModifiedChars:
        addl $2, (%ecx) # adiciona 2 ao valor apontado por ptr1
        incl %eax # aumenta o contador de chars modificados
        jmp stepUpPointer

        end:
        
		# epilogue
        popl %ebx
        movl %ebp, %esp
        popl %ebp           
        ret
