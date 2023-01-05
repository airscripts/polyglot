proc getFileContents(): void =
  try:
    var file = readFile(filename="wormhole.txt")
    echo file

  except IOError:
    raise newException(IOError, "File not found!")

try:
  getFileContents()

except IOError as error:
  echo error.msg