type
  Node = object
    data: int64

var x: Node = Node(data: 42'i64)
var y: ptr Node = x.addr
echo x.data, y.data

x.data = 84
echo x.data, y.data

y.data = 168
echo x.data, y.data