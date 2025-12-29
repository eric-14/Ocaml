(**
    Program to reverse line in a text file 
    This version takes in the values from a text file 
    reverses the lines and writes a new text file 

**)

let read_file_reverse input_file output_file = 
      Printf.printf "Program Starting.......";
      let channel1 = open_in input_file in 
      let channel2 = open_out output_file in

      try
        while true do 
              input_line channel1 
        done; 


        with End_of_file -> 
            Printf.printf "Completed reversing the files"; 
            close_in channel1; close_out channel2
            
          
let () = 
          if array.sys

