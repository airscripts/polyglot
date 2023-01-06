import std/unittest

from main as main import `add`, `sub`, `mul`, `div`, `mod`

suite "Calculator functions test suite":
  setup:
    discard
  
  teardown:
    discard

  test "Add function":
    check(add(1,2) == 3)
    check(add(12.33, 4.11) == 16.44)
    check(add(7,35) != 43)