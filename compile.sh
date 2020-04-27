
nasm -f elf32 $1.nasm -o $1.o

ld -m elf_i386 -o $1 $1.o


