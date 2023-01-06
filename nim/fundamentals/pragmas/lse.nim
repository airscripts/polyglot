import std/strutils

echo "Insert a number: "
var number: int = parseInt(readLine(stdin))

case number:
  of 0:
    echo "Zero"

  of 1:
    echo "One"

  of 2: 
    {.linearScanEnd.}
    echo "Two"

  of 3:
    echo "Three"

  else: 
    echo "Another number."