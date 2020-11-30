.section .data
	.global ptr1
	.global ptr2
	.global ptr3

.section .text
	.global str_cat			# void str_cat(void)
 
	str_cat:

		# prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx

		movl ptr1, %edx     	# copia o valor apontado por ptr1 para %edx
		movl ptr2, %ecx			# copia o valor apontado por ptr2 para %ecx
		movl ptr3, %eax

		first_loop:

			movb (%edx), %bl
			movb %bl, (%eax)
			
			cmpb $0, %bl
			je second_loop
			
			incl %edx			# incrementamos ptr1
			incl %eax          	# incrementamos ptr3
		
		jmp first_loop
	
			
		second_loop: 
			movb (%ecx), %bh
			movb %bh, (%eax)
			
			cmpb $0,%bh
			je end_loop          #vai para o end_loop 
			
			incl %ecx            #incrementamos ptr2
			incl %eax            #incrementamos ptr3
			
		jmp second_loop
	
	
 
		end_loop:
		

		# epilogue
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		
		ret
