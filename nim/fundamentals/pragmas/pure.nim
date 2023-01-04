type
  Color {.pure.} = object
    hex: string

let red: Color = Color(hex: "#ff0000")
echo red