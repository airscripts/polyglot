open System

let rec fibonacci (n: int): int = (
  if n < 0 then 0
  elif n <= 2 then 1
  else fibonacci (n - 1) + fibonacci (n - 2)
)

printf "Insert a number: "
let number = Int32.Parse(Console.ReadLine())
printfn $"Fibonacci of {number} is: {fibonacci number}."