printf "Type the first number: "
let firstNumber = System.Console.ReadLine()

printf "Type the second number: "
let secondNumber = System.Console.ReadLine()

let sum = (int firstNumber) + (int secondNumber)
printfn $"The sum is: {sum}"