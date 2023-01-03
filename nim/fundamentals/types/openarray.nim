var
  fruits: seq[string]
  capitals: array[3, string]

capitals = ["New York", "Rome", "Berlin"]
fruits.add("Banana")
fruits.add("Orange")

proc length(oa: openArray[string]): int =
  oa.len

assert fruits.length() == 2
assert capitals.length() == 3