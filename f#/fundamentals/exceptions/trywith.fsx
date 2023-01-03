open System

let division x y =
  try
    Some (x / y)

  with
    | :? DivideByZeroException -> printfn "Attempted division by zero." ; None

division 0 0