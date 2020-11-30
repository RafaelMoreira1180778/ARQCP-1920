.section .data
	.global code
	.global currentSalary
	CODE_10:
		.int 10
	CODE_11:
		.int 11
	CODE_12:
		.int 12
		
	.global code
	.global currentSalary
	
	
.section .text
	.global new_salary			 # int new_salary(void)

	new_salary:

		#prologue
		pushl %ebp
		movl %esp, %ebp
		#callee save
		pushl %ebx
		
		movl code, %ecx
		movl currentSalary, %eax
		
		cmp $10, %ecx
		je code10jmp
		
		cmp $11, %ecx
		je code11jmp
		
		cmp $12, %ecx
		je code12jmp
		
		addl $100, %eax
		jmp end
		

	code10jmp:
		addl $300, %eax
		jmp end
	
	code11jmp:
		addl $250, %eax
		jmp end
	
	code12jmp:
		addl $150, %eax
	
	end:
		
		#callee restore
		popl %ebx
		#epilogue
		movl %ebp, %esp
		popl %ebp
	ret
