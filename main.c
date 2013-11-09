#include <stdlib.h>
#include <stdio.h>

#include <caml/mlvalues.h>
#include <caml/callback.h>

void caml_closure_f1()
{
    static value * closure_f1 = NULL;
    if (closure_f1 == NULL) {
        closure_f1 = caml_named_value("caml.callback.f1");
    }
    caml_callback(*closure_f1, Val_unit);
}

void caml_closure_f2()
{
    static value * closure_f2 = NULL;
    if (closure_f2 == NULL) {
        closure_f2 = caml_named_value("caml.callback.f2");
    }
    caml_callback(*closure_f2, Val_unit);
}

int main(int argc, char **argv)
{
    caml_main(argv);
    caml_closure_f1();
    caml_closure_f2();
    return 0;
}

