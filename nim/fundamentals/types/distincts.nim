type
  Dollar = distinct int
  Euro = distinct int

proc `+`(x: Dollar, y: Dollar): Dollar =
  result = Dollar(int(x) + int(y))

proc `+`(x: Euro, y: Euro): Euro =
  result = Euro(int(x) + int(y))

proc `==`(x: Dollar, y: Dollar): bool =
  return int(x) == int(y)

proc `==`(x: Euro, y: Euro): bool =
  return int(x) == int(y)

var dollar: Dollar = Dollar(25)
var euro: Euro = Euro(25)

var dollars: Dollar = dollar + dollar
var euros: Euro = euro + euro

assert dollars == Dollar(50)
assert euros == Euro(50)