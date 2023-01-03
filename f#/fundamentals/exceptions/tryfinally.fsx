let product x y = 
  try 
    Some (x * y)
  
  finally
    printfn "The product has been calculated."

product 7 7