# Makefile automático com um sistema de "sufixos" para os ficheiros
# Apenas alterar o nome das variáveis antes de fazer "make"

# Variáveis 
INCLUDES = exist_char.h 
SOURCES = exist_char.c main.c 
OBJFILES = exist_char.o main.o 
EXEC = char_place

# Sufixos para os ficheiros
.SUFFIXES : .c .o

# Converte um ficheiro .c para um ficheiro .o. $< -- nome do ficheiro
.c.o:
	gcc -Wall -g -c $<

# Compila os ficheiros
${EXEC}: ${OBJFILES}
	gcc -Wall -g -o ${EXEC} ${OBJFILES}

${OBJFILES}: ${SOURCES} ${INCLUDES}

# Faz run aos ficheiros
run: ${EXEC}
	./${EXEC}

# Limpa todos os ficheiros gerados
clear:
	rm -f ${OBJFILES} ${EXEC}