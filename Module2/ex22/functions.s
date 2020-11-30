.section .data

    .global g
	.global h
    .global i
    .global j

.section .text
	.global f
    .global f2
    .global f3
    .global f4

	f:
		# prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx

        movw i, %bx
        movw j, %cx 
        
        cmpw %bx, %cx # compara j com i 
        je equal # if (i == j)

        # h = i + j - 1
        movw $-1, %dx
        addw %cx, %bx
        subw %dx, %bx
        movw %bx, %ax

        equal:
            # h = i - j + 1
            movw $1, %dx
            subw %cx, %bx
            addw %dx, %bx
            movw %bx, %ax
            jmp end

		end:
		# epilogue
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		
		ret
    
    f2:
		# prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx

        movw i, %bx
        movw j, %cx
        movw $1, %dx
        
        cmpw %cx, %bx # compara i com j
        jg greater # if (i > j)

        # j = j + 1
        addw %dx, %cx
        jmp endf2

        greater:
            # i = i - 1
            subw %dx, %bx
            jmp endf2


        endf2:
        # h = j * i
        imulw %bx, %cx
        movw %cx, %ax

		# epilogue
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		
		ret

    f3:
		# prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx

        movw i, %bx
        movw j, %cx
        
        cmpw %cx, %bx # compara i com j
        jge greaterEquals # if (i >= j)
		
        # h = i * j
        addw %cx, %bx
        movw $2, %ax

        # g = i + 1
        addw %bx, %ax
        jmp endf3

        greaterEquals:
            # h = i + j
            imulw %bx, %cx
            movw $1, %ax

            # g = i + j + 2
            addw %ax, %bx
            movw %bx, %ax
            jmp endf3

        endf3:
        # r = g / h
        cdq
        idivw %cx
		# epilogue
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		
		ret
    
    f4:
		# prologue
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx

        movw i, %bx
        movw j, %cx
        movw $10, %ax

        # i + j
        addw %bx, %cx
        cmpw %cx, %ax # compara (i + j) com 10
        jl underTen # if (i + j < 10)

        # j = j * j
        imulw %cx, %cx
        movw %cx, %ax
        movw $3, %cx

        # h = j * j / 3;
        cdq
        idivw %cx
        jmp endf4

        underTen:
            # i = i * i
            imulw %bx, %bx
            movw $4, %ax

            # h = 4 * i * i
            imulw %ax, %bx
            movw %bx, %ax
            jmp endf4

        endf4:
		# epilogue
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		
		ret
