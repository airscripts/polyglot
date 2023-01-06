import std/unittest

from main as main import `add`, `sub`, `mul`, `div`, `mod`

suite "Calculator functions test suite":
  setup:
    discard
  
  teardown:
    discard

  test "Add function":
    check(add(15, 18) == 33)
    check(add(7, 35) != 43)
    check(add(12.33, 4.11) == 16.44)
    check(add(1.74, 1.73) != 1)

  test "Sub function":
    check(sub(1, 5) == -4)
    check(sub(15, 5) != 11)
    check(sub(33.1, 13.1) == 20)
    check(sub(11.1, 10.1) != 1.1)

  test "Mul function":
    check(mul(5, 5) == 25)
    check(mul(10, 1) != 11)
    check(mul(11.1, 2.0) == 22.2)
    check(mul(5.5, 3.0) != 12)

  test "Div function":
    check(main.div(12, 2) == 6)
    check(main.div(13, 2) != 6)
    check(main.div(6.66, 2.00) == 3.33)
    check(main.div(8.33, 2.11) != 42)

  test "Mod function":
    check(main.mod(12, 3) == 0)
    check(main.mod(16, 4) != 1)
    check(main.mod(11, 4) == 3)
    check(main.mod(23, 21) != 3)