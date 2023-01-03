from std/strutils import parseInt

echo "Guess the number: "
var number: int = parseInt(readLine(stdin))

while number != 7:
  echo "Wrong! Try with another number: "
  number = parseInt(readLine(stdin))

echo "You guessed the number!"