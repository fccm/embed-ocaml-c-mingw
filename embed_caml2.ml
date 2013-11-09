let f2 () =
  print_endline "f2"

let () =
  Callback.register "caml.callback.f2" f2;
;;

