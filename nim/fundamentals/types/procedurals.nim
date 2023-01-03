from std/strformat import fmt

proc greet(name: string): string = return fmt"Hello, {name}!"

proc communicate(
  greet: proc (name: string): string,
  name: string
): string = echo greet(name)

discard communicate(greet, "Foo")