proc isEven(filename: string): bool {.raises: [IOError].} =
  try:
    var contents: string = readFile(filename=filename)
    return cast[int](contents) mod 2 == 0

  except IOError as error:
    error.msg = "Cannot open file."
    raise error

try:
  echo isEven("wormhole.txt")

except IOError as error:
  echo error.msg