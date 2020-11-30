.section .data

	.global s

.section .text
	.global swapBytes # short swapBytes(void)

	swapBytes:

		#prologue
		pushl %ebp
		movl %esp, %ebp

		movw s, %ax		# move a string para o registo %ax
		movw %ax, %cx	# move o registo de %ax para %cx (ambos em 16-bits)
		
		movb %ch, %al	# troca os 8-bits menos signif. do %cx com os 8-bits mais signif. com %ax
		movb %cl, %ah	# troca os 8-bits mais signif. do %cx com os 8-bits menos signif. com %ax
		
		movw %ax, %dx	# move o registo de %ax para %dx para poder dar return
		
		#epilogue
		movl %ebp, %esp
		popl %ebp
		
		ret
