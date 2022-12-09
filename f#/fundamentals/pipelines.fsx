open System

let square = fun x -> x * x
let isOdd = fun x -> x % 2 = 1

printf "Insert a number: "
let number = Int32.Parse(Console.ReadLine())

let isOddSquare = number |> square |> isOdd
printfn "Is the square of {number} odd? %b" isOddSquare