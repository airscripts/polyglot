open System

let sum = fun (x: int) (y: int) -> x + y
let square = fun (x: int) -> x * x

printf "Insert a number: "
let number = Int32.Parse(Console.ReadLine())
let composition = sum 7 >> square
let result = composition number
printfn $"The result for {number} is: {result}."