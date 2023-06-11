all:
	calias -l main.al -o main

asm:
	calias -c main.al -o main.asm
	
withc:
	calias -c main.al -o program
	nasm -f elf32 program.asm -o program.o
	gcc foo.c -m32 -c
	gcc -m32 foo.o program.o -no-pie -o program
