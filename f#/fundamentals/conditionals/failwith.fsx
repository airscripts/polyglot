let divide x y = 
  match y with
    | 0 -> failwith "Divisor cannot be zero."
    | _ -> printfn "Executing division..."; x / y

divide 1 1
divide 1 0