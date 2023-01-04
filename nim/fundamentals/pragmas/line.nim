template assertion*(condition: untyped, message = "") =
  if not condition:
    {.line: instantiationInfo().}:
      raise newException(AssertionDefect, message)