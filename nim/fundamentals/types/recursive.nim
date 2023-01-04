type
  Node = ref object
    data: int
    sym: Sym

  Sym = ref object
    node: Node