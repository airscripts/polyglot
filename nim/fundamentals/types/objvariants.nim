type
  ColorKind = enum
    marker,
    pencil,
    pastel

  Color = object
    case kind: ColorKind
      of marker: milliliters: float
      of pencil: length: float
      of pastel: thickness: float

var color: Color = Color(kind: marker, milliliters: 12.3)
echo color