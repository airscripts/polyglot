type
  Node[T] = ref object
    data: T

var inode: Node[int] = Node[int](data: 1)
var tnode: Node[string] = Node[string](data: "foo")
echo inode.data, tnode.data