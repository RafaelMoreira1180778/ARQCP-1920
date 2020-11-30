# Makefile automático com um sistema de "sufixos" para os ficheiros
# Apenas alterar o nome das variáveis antes de fazer "make"

# Variáveis 
INCLUDES = find_word.h 
SOURCES = find_word.c main.c 
OBJFILES = find_word.o main.o 
EXEC = words

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