let lines = ref []  (*mutable list*)


let () = 
    try 
      (*Read from terminal. prepend to list*)
      while true do lines := read_line () :: !lines done 
    with End_of_file -> 
      ()

let rec print l = (*Recursive fn to print list elements*)
  match l with 
    | [] -> ()
    | s :: r -> print_endline s; print r 
let () = print !lines 