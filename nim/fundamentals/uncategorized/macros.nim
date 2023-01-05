import std/macros

macro `:=`(name, value: untyped): untyped =
  quote do:
    var `name` = `value`

a := 1; echo a