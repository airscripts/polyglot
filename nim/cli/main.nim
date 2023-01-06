from std/parseopt import getopt, cmdLongOption, cmdShortOption

from functions as functions import help, version

from constants as constants import 
  CLI_NAME,
  CLI_VERSION,
  CLI_COPYRIGHT,
  CLI_FUNCTIONS

proc options(option: string): void =
  case option:
    of CLI_FUNCTIONS.h, CLI_FUNCTIONS.help: help()
    of CLI_FUNCTIONS.v, CLI_FUNCTIONS.version: version()
    else: help()

proc cli(): void =
  for kind, key, val in getopt():
    case kind
      of cmdLongOption, cmdShortOption: options(key)
      else: discard

when isMainModule:
  cli()