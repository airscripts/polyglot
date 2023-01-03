iterator countup(a, b: int): int =
  var res = a

  while res <= b:
    yield res
    inc(res)

for index in countup(1, 10):
  echo index