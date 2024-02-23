# Kernel-Example

## Install/Setup:

`git clone github.com/larson-carter/Kernel-Example (OR OTHER URL)`

`cd /dir/to/git/clone`

`chmod +x create_iso.sh`

`./create_iso.sh`

# Testing once installed:

Now you are able to utilize virtualization software. QEMU is a popular choice for testing kernels out:

`qemu-system-i386 -cdrom myos.iso`


# Note:

## Ideal Directory Tree
- Cloned Repo
  - kernel_entry.asm
  - kernel_main.c
  - linker.ld
  - grub.cfg
  - iso (This directory is generated after execution of commands)
    - boot
      - grub

## Additional Info: 

Make sure you have the necessary tools installed, such as NASM, GCC (cross-compiler for x86), and GRUB. 

Also, ensure that your QEMU version supports -cdrom for ISO booting. If you encounter any issues, refer to the documentation of the tools and your system's specific requirements.