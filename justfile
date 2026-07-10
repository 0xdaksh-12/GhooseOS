ASM := "nasm"
SRC_DIR := "src"
BUILD_DIR := "build"

build:
    mkdir -p {{BUILD_DIR}}
    {{ASM}} {{SRC_DIR}}/main.asm -f bin -o {{BUILD_DIR}}/main.bin
    cp {{BUILD_DIR}}/main.bin {{BUILD_DIR}}/main_floppy.img
    truncate -s 1440k {{BUILD_DIR}}/main_floppy.img

run:
  qemu-system-i386 -fda build/main_floppy.img

clean:
    rm -rf {{BUILD_DIR}}
