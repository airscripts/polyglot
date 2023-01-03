from std/strutils import parseInt

let number: int = parseInt(readLine(stdin))

case number
  of 0..2, 4..7: echo "The number is in set {0, 1, 2, 4, 5, 6, 7}"
  of 3, 8: echo "The number is in set {3, 8}"
  else: discard