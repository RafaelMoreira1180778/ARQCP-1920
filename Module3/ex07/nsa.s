.section .data
	.global ptr1

.section .text
	.global encrypt
    .global decrypt

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

    decrypt:
    	# prologue
        pushl %ebp    
        movl %esp, %ebp 
        pushl %ebx

        call encrypt # efetua a encriptação da string
        movl ptr1, %ecx # move o pointer para ecx
        movl $0, %eax # move 0 para o contador 

        compare2:
        movb (%ecx), %bl # move o conteúdo do pointer para um registo de 8 bits

        cmpb $0, %bl # compara 0 com o valor do pointer
        je end2 # se pointer = 0, enão atingimos o final da string

        cmpb $'a', %bl # compara o valor do pointer com a  
		je stepUpPointer2 # não modificar nada e incrementar a posição do array

		cmpb $' ', %bl # compara o valor do pointer com Space
		je stepUpPointer2 # não modificar nada e incrementar a posição do array

        jmp incNumModifiedChars2     

        stepUpPointer2:
        incl %ecx # aumenta a posição do array            
        jmp compare2

        incNumModifiedChars2:
        subl $4, (%ecx) # remove 2 ao valor apontado por ptr1
        incl %eax # aumenta o contador de chars modificados
        jmp stepUpPointer2

        end2:

        # epilogue
        popl %ebx
        movl %ebp, %esp
        popl %ebp           
        ret
