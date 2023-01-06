from std/strformat import fmt

from descriptions as descriptions import help
from constants as constants import CLI_VERSION

proc help*(): void =
  echo descriptions.help
  system.quit(errorcode=QuitSuccess)

proc version*(): void =
  echo fmt"{CLI_VERSION}{'\n'}"
  system.quit(errorcode=QuitSuccess)