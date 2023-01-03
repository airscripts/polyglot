type
  Node {.acyclic.} = object
    data: int

let node: Node = Node(data: 1)
echo node