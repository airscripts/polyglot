open System

let division x y =
  try
    Some (x / y)

  with
    | :? DivideByZeroException -> printfn "Attempted division by zero." ; None

division 0 0

let product x y = 
  try 
    Some (x * y)
  
  finally
    printfn "The product has been calculated."

product 7 7

exception SumError of string

let sum x = 
  try
    try
      match x with
        | 10 -> raise (SumError("Argument not acceptable."))
        | _ -> x + x

    with
      | SumError (string) -> printfn $"Sum error occurred: {string}"; 0

  finally
    printfn "The sum has been calculated."

sum 7
sum 10