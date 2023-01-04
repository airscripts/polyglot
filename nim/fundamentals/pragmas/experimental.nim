{.experimental: "overloadableEnums".}

type 
  E = enum
    value

  T = enum
    value = 3

echo ord(E.value), ord(T.value)