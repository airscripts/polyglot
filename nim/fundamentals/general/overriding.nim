type
  Expression = ref object of RootObj
    x: int

  Literal = ref object of Expression

method eval(y: Expression): void {.base.} =
  echo y.typeof
  echo "Expression eval has been called."

method eval(y: Literal): void =
  echo y.typeof
  echo "Literal eval has been called."

var expression: Expression = Expression(x: 1)
var literal: Literal = Literal(x: 2)

cast[Literal](expression).eval()
literal.eval()