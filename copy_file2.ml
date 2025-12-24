let copy_file file1 file2 = 
      let c1 = open_in file1 in 
      let c2 = open_out file2 in 
      
      try 
          while true do 
                output_char c2 (input_char c1)

          done

        with End_of_file -> 
            Printf.printf "Completed reading file or End of file Error"; 
            close_in c1; close_out c2


let () = copy_file Sys.argv.(1) Sys.argv.(2)