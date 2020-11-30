.section .data

	.global s1
	.global s2

.section .text
	.global crossSumBytes

	crossSumBytes:
		# prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx

		movw s1, %ax # move s1 para ax
		movw s2, %cx # move s2 para cx

		addb %ch, %al # adiciona ch a al (menos significativo de a com mais significativo de c)
		addb %cl, %ah # adiciona cl a ah (menos significativo de c com mais significativo de a)
		# o resultado fica armazenado em al/ah que corresponde ao registo ax que é ov alor do return
		
		# epilogue
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		
		ret
