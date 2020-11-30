.section .text
	.global greater_date
		greater_date:
			# prologue
			pushl %ebp
			movl %esp, %ebp
			# -----------------------------------------------------------------------------------------------------------------------------

			movl 8(%ebp), %eax 							# date1 em eax
			movl 12(%ebp), %ecx 						# date2 em ecx
			
			shll $8, %eax								# date1 << 8 (ano)
			shll $8, %ecx								# date2 << 8 (ano)
				
			cmpl %ecx, %eax
			jl returnDate2								# ano date1 < ano date2
			je mes										# ano date2 == ano date2
			jg returnDate1								# ano date1 > ano date2

			mes:
			movl 8(%ebp), %eax 							# date1 em eax
			movl 12(%ebp), %ecx 						# date2 em ecx

			shrl $24, %eax								# date1 << 24 (mes)
			shrl $24, %ecx								# date2 << 24 (mes)
				
			cmpl %ecx, %eax
			jl returnDate2								# mes date1 < mes date2
			je dia										# mes date1 == mes date2
			jg returnDate1								# mes date1 > mes date2
				
			dia:
			movl 8(%ebp), %eax 							# date1 em eax
			movl 12(%ebp), %ecx 						# date2 em ecx

			shrl $24, %eax								# date1 >> 24 (dia)
			shrl $24, %ecx								# date2 >> 24 (dia)

			cmpl %ecx, %eax
			jl returnDate1								# dia date1 < dia date2
			je returnDate1								# dia date1 == dia date2 (default return)
			jg returnDate2								# dia date1 > mes date2
				
			returnDate1:
			movl 8(%ebp), %eax 							# date1 em eax
			jmp end										# return date1
			
			returnDate2:
			movl 12(%ebp), %eax 						# date2 em ecx
			jmp end										# return date2
			
			end:
			
			# -----------------------------------------------------------------------------------------------------------------------------
			# epilogue
			movl %ebp, %esp
			popl %ebp
			ret
