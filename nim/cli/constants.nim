from types as types import Function

const CLI_NAME*: string = "Line"
const CLI_VERSION*: string = "1.0.0"
const HELP_FUNCTION: string = "help"
const SHORT_HELP_FUNCTION: string = "h"
const VERSION_FUNCTION: string = "version"
const SHORT_VERSION_FUNCTION: string = "v"
const CLI_COPYRIGHT*: string = "Copyright (c) 2023 by Airscript"

const CLI_FUNCTIONS*: Function = (
  h: SHORT_HELP_FUNCTION,
  v: SHORT_VERSION_FUNCTION,
  help: HELP_FUNCTION,
  version: VERSION_FUNCTION,
)