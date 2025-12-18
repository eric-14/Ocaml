(*
    Read points from the user  
    sort the points 
    and draw curve joining the respective points 

*)
open Graphics

let num_points = 
  Printf.printf "Enter the number of points "; 
  read_int ()


(* function accepts user input and returns points from user input *)
let read_points () =
      let x =  read_int () in 
      let y = read_int () in 
      (x, y) 

let arr = 
  (* declare array having the points*)
  Printf.printf "Enter the x and y points "; 
  Array.init num_points (fun i -> read_points ()) 


(* function to be passed to array.sort for sorting *)
let compare (p1: int * int) (p2: int * int) =
      let (x1, y1) = p1 in 
      let (x2, y2) =  p2 in 
      x1 - x2 
   
let () = Array.sort compare arr 

let () = 
    open_graph " 500x200";
    set_line_width 3; 
    moveto 0 0; 
    Printf.printf "Drawing "; 

    (* start the curve at the origin*)
  
    for i=0 to num_points-1  do 
        let (x, y) = arr.(i) in 
        lineto x y 
    done; 
    ignore (read_key ())
        




    
      