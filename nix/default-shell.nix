{pkgs}:
pkgs.mkShell {
  packages = with pkgs; [
    # Build toolchain
    gcc
    binutils
    gnumake
    nasm

    # Emulator and debugger
    qemu
    gdb

    # Disk utilities
    dosfstools
    mtools

    # Binary inspection
    file
    xxd
    hexedit

    # C tooling
    clang-tools

    # Nix tooling
    nil
    alejandra
    statix

    # Task runner
    just
  ];

  shellHook = ''
    echo "Welcome to GhooseOS"
  '';
}
