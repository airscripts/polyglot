const CALCULATE_DEPRECATION_MESSAGE = "This function is deprecated."

proc calculate(a: float, b: float) {.deprecated: CALCULATE_DEPRECATION_MESSAGE.} =
  echo a * b

calculate(1.0, 2.0)