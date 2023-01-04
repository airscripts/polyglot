proc isEven(number: int): bool {.error.} = 
  return (number mod 2) == 0

discard isEven(2)