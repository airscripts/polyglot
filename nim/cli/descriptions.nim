from std/strformat import fmt

from constants as constants import CLI_NAME, CLI_VERSION, CLI_COPYRIGHT

let usage: string = """
Usage:
  line [options]
"""

let options: string = """
Options:
  -h, --help          Show this help
  -v, --version       Show the current version
"""

let help*: string = fmt"""
{CLI_NAME} {CLI_VERSION}
{CLI_COPYRIGHT}{'\n'}
{usage}
{options}"""