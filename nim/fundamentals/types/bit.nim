type
  Flag* {.size: sizeof(cint).} = enum
    A, B, C, D

  Flags = set[Flag]

proc toNum(f: Flags): int = cast[cint](f)
proc toFlags(n: int): Flags = cast[Flags](n)

assert {}.toNum == 0
assert 1.toFlags == {A}