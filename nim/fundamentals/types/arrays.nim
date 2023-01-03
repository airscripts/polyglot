type
  IntArray = array[0..10, int]

var list: IntArray

for index in low(list)..high(list):
  list[index] = index

echo list