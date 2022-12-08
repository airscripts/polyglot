printf "Insert your age: "
let age = System.Console.ReadLine()

if (int age) > 65
then printf "You're above 65 years old."

elif (int age) = 42
then printf "You're 42 years old!"

else printf $"You're {age} years old."