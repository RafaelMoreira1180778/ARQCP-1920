# Makefile automático com um sistema de "sufixos" para os ficheiros
# Apenas alterar o nome das variáveis antes de fazer "make"

# Variáveis 
INCLUDES = check.h inc_nsets.h populate.h main.h
SOURCES = check.c populate.h inc_nsets.c main.c 
OBJFILES = check.o populate.o inc_nsets.o main.o 
EXEC = out

# Sufixos para os ficheiros
.SUFFIXES : .c .o

# Converte um ficheiro .c para um ficheiro .o. $< -- nome do ficheiro
.c.o:
	gcc -m32 -Wall -g -c $<

# Compila os ficheiros
${EXEC}: ${OBJFILES}
	gcc -m32 -Wall -g -o ${EXEC} ${OBJFILES}

${OBJFILES}: ${SOURCES} ${INCLUDES}

# Faz run aos ficheiros
run: ${EXEC}
	./${EXEC}

# Limpa todos os ficheiros gerados
clear:
	rm -f ${OBJFILES} ${EXEC}