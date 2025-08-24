open Graphics 
let width = 600 
let height = 800 
let k = 500


let norm2 x y = x *. x +. y *. y 

let mandelbrot a b = 
    let rec mandel_rec x y i = 
      if i = k || norm2 x y > 4. then i = k 
      else 
         let x' = x *. x -. y *. y +. a in 
         let y' = 2. *. x *. y +. b in 
         mandel_rec x' y' (i+1)
      in 
      mandel_rec 0. 0. 0 

let draw () = 
  for w = 0 to width - 1 do 
    for h = 0 to height -1 do 
      let a = 4. *. float w /. float width -. 2. in 
      let b = 4. *. float h /. float height -. 2. in 
      if mandelbrot a b then plot w h 
      done 
    done 


    let () = 
      let dim = Printf.sprintf " %dx%d" width height in 
      open_graph dim; 
      draw (); 
      ignore (read_key ())


(*  
    defined by Z = Z^2 +c 
                X= 0 
                y =0 
                Xn+1 = X^2 - Y^2 + 2 
                Yn+1 = 2XY + b 

                use condition x^2 + Y^2 > 4 indicating the value is tending to infinity and thus not in the mandrelbol set 

*)
