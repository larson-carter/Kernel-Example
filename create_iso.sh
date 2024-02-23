nasm -f elf32 kernel_entry.asm -o kernel_entry.o

gcc -m32 -c kernel_main.c -o kernel_main.o

ld -m elf_i386 -T linker.ld -o kernel.bin kernel_entry.o kernel_main.o

mkdir -p iso/boot/grub

cp kernel.bin iso/boot/

cp grub.cfg iso/boot/grub/

grub-mkrescue -o myos.iso iso