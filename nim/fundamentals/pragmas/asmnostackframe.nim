proc addInt(a, b: int) {.asmNoStackFrame used.} =
  asm """
      mov eax, `a`
      add eax, `b`
      jno theEnd
      call `raiseOverflow`
    theEnd:
  """