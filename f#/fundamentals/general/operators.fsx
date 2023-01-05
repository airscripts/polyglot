let mutable number = 25
let isNumberDivisibleByTwo = number % 2 = 0
printfn "%b" isNumberDivisibleByTwo

number <- 20
let sum = number + 15
printfn "%i" sum

number <- 32
let subtraction = number - 12
printfn "%i" subtraction

number <- 2
let division = number / 2
printfn "%i" division

number <- 42
let areNumbersEqual = number = 42
printfn "%b" areNumbersEqual

number <- 128
let areNumbersUnequal = number <> 1
printfn "%b" areNumbersUnequal