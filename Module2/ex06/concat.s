.section .data

	.global byte1
	.global byte2

.section .text
	.global concatBytes

	concatBytes:
		#prologue
		pushl %ebp
		movl %esp, %ebp

# start from right to left
		movb byte1, %al		# move o valor definido em C para os 8-bits menos signif. em %ax
		movb byte2, %ah		# move o valor definido em C para os 8-bits mais signif. em %ax
		
		movw %ax, %dx		# move %ax para %dx para poder dar retorno
		
		#epilogue
		movl %ebp, %esp
		popl %ebp
		
		ret
