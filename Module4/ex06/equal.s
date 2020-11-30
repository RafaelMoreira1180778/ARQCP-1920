.section .text
	.global test_equal
	
	test_equal:
		# prologue
		pushl %ebp
		movl %esp, %ebp
	
#		pushl %ebx
		pushl %edi
		pushl %esi
		
		movl 8(%ebp), %edi
		movl 12(%ebp), %esi
		movl $0, %eax
		
		
		loop:
			movb (%edi), %cl
			movb (%esi), %dl
			
			cmpb $0, %cl
			je acabou_palavra
			
			cmpb %cl, %dl
			jne end
			
			incl %edi
			incl %esi
			jmp loop

		acabou_palavra:
			cmpb $0, %dl
			je finalizar
			jmp end
			
		finalizar:
			movl $1, %eax
			jmp end
		
		end:
		
		
		popl %esi
		popl %edi
#		popl %ebx

		movl %ebp, %esp
		popl %ebp
	
		ret
