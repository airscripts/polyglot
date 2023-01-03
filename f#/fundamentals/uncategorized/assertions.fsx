let subtractUnsigned (x: uint32) (y: uint32) = 
  assert (x > y)
  x - y

subtractUnsigned 1u 2u
subtractUnsigned 2u 1u