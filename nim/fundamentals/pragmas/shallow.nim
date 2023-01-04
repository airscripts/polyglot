type
  Node {.shallow.} = object
    data: int

var node: Node = Node(data: 1)
var shallowNode = node

shallowNode.data = 2

echo node.data
echo shallowNode.data