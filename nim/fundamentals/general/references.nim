type
  RefNode = ref object
    data: int64

  UnreferencedNode = object
    data: int64

var x: RefNode = RefNode(data: 7'i64)
var y: UnreferencedNode = UnreferencedNode(data: 14'i64)

var t: RefNode = x
var f: UnreferencedNode = y
echo (x.data, t.data), (y.data, f.data)

t.data = 9'i64
echo (x.data, t.data), (y.data, f.data)

f.data = 18'i64
echo (x.data, t.data), (y.data, f.data)