proc writeLn(file: File, args: varargs[string]): void =
  for arg in args:
    echo arg

writeLn(stdout, "Hello", ",", "World!")