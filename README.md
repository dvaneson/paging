# paging

A page table written in C, based on the week 4 and week 5 labs from the
[Languages and Low-Level Programming Course(LLP)](http://web.cecs.pdx.edu/~mpj/llp/).
This lab was also implemented in LC, which can be found
[here](https://github.com/dvaneson/paging-lc).

I originally worked on the LLP labs in https://github.com/dvaneson/baremetal.
I have moved the page table code to this repository to make it easier to
reference and compare the C implementation with the LC version.

## Installation Notes:

-   We typically run these programs in a virtual machine that is
    running Ubuntu 18.04 LTS with the following packages installed:

          gcc make perl linux-headers-$(uname -r) \
          build-essential dkms clang llvm qemu xorriso libc6-x32 \
          parted default-jdk git ant gcc-multilib g++-multilib

    You can find a detailed set of instructions for building a virtual
    machine that is suitable for running these programs by
    [clicking here](http://web.cecs.pdx.edu/~mpj/llp/vminstall/). This
    information may also be useful if you are trying to configure a
    machine with a different version of Linux for the purpose of running
    these programs.

-   We recommend using the provided Makefiles to compile and run these
    programs. For example, you can build this program using:

          make

    You can replace `make` with `make run` in either of the examples above
    to build and also run the program inside QEMU, or you can use `make clean`
    to remove temporary files that are generated during the build process.

## libs

This program depends on libraries and tools that are packaged together in the libs
folder. The libraries include:

-   `mimg` - Memory image boot tools, providing an extra layer
    of flexibility and control over Grub. The mimgmake tool
    allows a developer to combine the contents of multiple
    executable or other files in a single image, including
    details of the addresses where the files should be loaded.
    The mimgload tool uses the resulting image files to ensure
    that memory is appropriately initialized at boot-time
    before handing control to the appropriate kernel code.

-   `simpleio` - A library for simple I/O, including output to
    the screen (via video RAM) or a serial port, and input
    from the keyboard.

-   `userio` - Variant of the `simpleio` library for users that makes a system
    call to the kernel for printing a char rather than trying to output itself.

-   `winio` - Variant of the `simpleio` library that supports multiple output
    windows within a single program.
