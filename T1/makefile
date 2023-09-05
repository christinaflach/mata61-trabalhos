# Name of the project
PROJ_NAME=blite

# .c files
C_SOURCE=$(wildcard *.c)

# .h files
H_SOURCE=$(wildcard *.h)

# Object files
OBJ=$(C_SOURCE:.c=.o)

# Compiler
CC=gcc

# Flags for compiler
CC_FLAGS=-c         \
         -W         \
         -ansi

# compilation and linking

all: $(PROJ_NAME)

$(PROJ_NAME): blite.tab.o lex.yy.o main.o
	@ echo 'Building binary using GCC linker: $@'
	$(CC) -o $@ $^
	@ echo 'Finished building binary: $@'
	@ echo ' '

blite.tab.o: blite.tab.c blite.tab.h
	@ echo 'Building target using GCC compiler: $<'
	$(CC) -o $@ $< $(CC_FLAGS)
	@ echo ' ' 

lex.yy.o: lex.yy.c blite.tab.h
	@ echo 'Building target using GCC compiler: $<'
	$(CC) -o $@ $< $(CC_FLAGS)
	@ echo ' ' 

main.o: main.c blite.tab.h
	@ echo 'Building target using GCC compiler: $<'
	$(CC) -o $@ $< $(CC_FLAGS)
	@ echo ' '

# flex and bison

lex.yy.c: ./src/blite.l
	@ echo 'Generating $@'
	flex ./src/blite.l
	@ echo ' ' 

blite.tab.c: ./src/blite.y
	@ echo 'Generating $@'
	bison -d ./src/blite.y
	@ echo ' ' 

clean:
	rm -rf *.o *~ lex.yy.c blite.tab.* $(PROJ_NAME)

.PHONY: all clean

