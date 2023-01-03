exception GenericError of string

let foo x y =
  try
    if x = y then raise (GenericError("x is equal to y"))
    else printfn "bar"

  with
    | GenericError(string) -> printfn $"An error occurred: {string}."

foo 1 1

let bar x y =
  try
    Some(x / y)
  
  with
    | _ -> printfn "Reraising exception..."; reraise()

bar 0 0