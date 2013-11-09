Demonstrating how to compile with MingW's toolchain
embedded OCaml code into a main application written in C.

Compile with the following command:
$ make -f build.mk all

You should then get a program that greets that way:
$ ./myprog
f1
f2

In the end, clean the place with:
$ make -f build.mk clean

This mini-project is released under a restrictionless Zlib license,
see the file "LICENSE.txt" for details.

