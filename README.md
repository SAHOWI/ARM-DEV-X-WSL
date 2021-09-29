# Cross Development ARM 


## Environment Setup
Assumption: You are using a Windows 10 Machine with WSL2 and Ubuntu 20.04

Open your Ubuntu 20.04 WSL Environment

Install the gcc toolchain
```bash
sudo apt install gcc
sudo apt-get install gcc-arm*
```

Install the QEMU emultaor for ARM
```bash
sudo apt install qemu-user-static
```


Ensure all packages are up to date:
```bash
sudo apt update
sudo apt upgrade
```

Test all the components with a simple assembly program where we just load one value in register R15
```assm
# ARM Assembly Examples
# Filename: hello_world.asm
# Version:  1.0
# Purpos:   Validate Toolchain


.global         _start
.section        .text

_start:
        mov r15, #64



.section        .data
```


```bash
sahowi:/mnt/c/data/SCM/GIT/ARM-DEV-X-WSL/src$ arm-linux-gnueabihf-as hello_world.asm -o hello_world.o
sahowi:/mnt/c/data/SCM/GIT/ARM-DEV-X-WSL/src$ file hello_world.o
hello_world.o: ELF 32-bit LSB relocatable, ARM, EABI5 version 1 (SYSV), not stripped
sahowi:/mnt/c/data/SCM/GIT/ARM-DEV-X-WSL/src$ arm-linux-gnueabihf-gcc-9 hello_world.o -o hello_world.elf -nostdlib
sahowi:/mnt/c/data/SCM/GIT/ARM-DEV-X-WSL/src$ file hello_world.elf
hello_world.elf: ELF 32-bit LSB shared object, ARM, EABI5 version 1 (SYSV), dynamically linked, interpreter /lib/ld-linux-armhf.so.3, BuildID[sha1]=68aedc3ff108e9560658d83e344a1f0ac3453ac2, not stripped
```

