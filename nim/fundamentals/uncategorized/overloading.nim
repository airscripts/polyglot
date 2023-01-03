proc toString(x: int): string =
  result =
    if x < 0: "Negative."
    elif x > 0: "Positive."
    else: "Zero."

proc toString(x: bool): string =
  result =
    if x: "Yes."
    else: "No."

assert toString(13) == "Positive."
assert toString(true) == "Yes."