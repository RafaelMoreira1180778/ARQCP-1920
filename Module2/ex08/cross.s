.section .data

	s1:
		.short 5 # variável s1 declara em c
	s2:
		.short 3 # variável s2 declara em c
		
	.global s1
	.global s2

.section .text
	.global crossSumBytes

	crossSumBytes:
		# prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx

		movw s1, %ax
		movw s2, %cx

		addb %ch, %al # adiciona ch a al (menos significativo de a com mais significativo de c)
		addb %cl, %ah # adiciona cl a ah (menos significativo de c com mais significativo de a)
		# o resultado fica armazenado em al/ah que corresponde ao registo ax que é ov alor do return
		
		
		# epilogue
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		
		ret
