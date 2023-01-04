proc isOdd(number: int): bool =
  {.warning: "Remember to pass int argument!".}
  return (number mod 2) == 1

discard isOdd(1)