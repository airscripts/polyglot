type
  Color = enum
    blue, red, green, yellow

let color: int = ord(Color.blue)
let predecessor: Color = pred(Color.red)
let successor: Color = succ(Color.green)

echo color, predecessor, successor