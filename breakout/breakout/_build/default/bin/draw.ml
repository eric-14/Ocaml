open Graphics 

let left = 0. 
let right = 1000. 
let down = 0. 
let up = 600. 
let ball = 20
let paddle = 150
let thick = 40

let gray = rgb 220 220 220 

let init () = 
    let window_size = Printf.sprintf " %dx%d" (truncate right) (truncate up) in 
    open_graph window_size; 
    auto_synchronize false 

let clear () = 
      set_color gray; 
      fill_rect 0 0 (truncate right) (truncate up)

let get_paddle_pos () = 
    let x = fst (mouse_pos ()) in 
    max 0 (min x (truncate right - paddle))

let game x y = 
   clear (); 
   set_color black; 
   fill_circle (truncate x) (truncate y) ball; 
   let x = get_paddle_pos () in
   fill_rect x 0 paddle thick; 
   synchronize (); 
   x  







