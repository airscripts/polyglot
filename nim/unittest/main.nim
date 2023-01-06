type T = int | float

proc `add`*(x: T, y: T): T {.used.} =
  return x + y

proc `sub`*(x: T, y: T): T {.used.} =
  return x - y

proc `mul`*(x: T, y: T): T {.used.} =
  return x * y

proc `div`*(x: T, y: T): T {.used.} =
  return x / y

proc `mod`*(x: T, y: T): T {.used.} =
  return x mod y