.section .data

	.global ptr1

.section .text
	.global zero_count

	zero_count:

		# prologue
        pushl %ebp    
        movl %esp, %ebp 
        pushl %ebx

        movl ptr1, %ecx
        movl $0, %eax

        compare:
        movb (%ecx), %bl           
        cmpb $'0', %bl             
        je incNumZeros                  
        cmpb $0, %bl                   
        je end                              

        stepUpPointer:
        incl %ecx                       
        jmp compare            

        incNumZeros:
        incl %eax                          
        jmp stepUpPointer

        end:
		
		# epilogue
        popl %ebx
        movl %ebp, %esp
        popl %ebp         
        ret

