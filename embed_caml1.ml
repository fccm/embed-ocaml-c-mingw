let f1 () =
  print_endline "f1"

let () =
  Callback.register "caml.callback.f1" f1;
;;

