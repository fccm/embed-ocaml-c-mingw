CC = /bin/i686-w64-mingw32-gcc
FLEXLINK = flexlink -chain mingw -exe
LIBDIR = /usr/lib
OCAMLOPT = ocamlopt
OCAMLDIR = c:/OCaml/lib

.PHONY: all
all: myprog

myprog: embed_oc.o main.o
	$(FLEXLINK) -o $@ embed_oc.o main.o \
	  -L $(OCAMLDIR) -lasmrun \
	  -L $(LIBDIR) -ldl

.PHONY: mlobj cobj
mlobj: embed_oc.o
cobj: main.o

main.o: main.c
	$(CC) -c -I $(OCAMLDIR) main.c

embed_oc.o: embed_caml1.ml embed_caml2.ml
	$(OCAMLOPT) -output-obj -o $@ $^

.PHONY: clean
clean:
	$(RM) *.[oa] *.cm[ioxta] *.cmx[as] *.exe

