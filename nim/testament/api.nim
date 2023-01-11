import std/json
import std/asyncdispatch

from std/strformat import fmt
from std/times import now, utc, DateTime, format
from std/asynchttpserver import Request, respond, Http404, Http200

from constants as constants import VERSION

proc ping*(request: Request) {.async.} =
  let content = "pong"
  await request.respond(code=Http200, content=content)

proc poweroff*(request: Request) {.async.} =
  let content: string = fmt"shutdown: {true}"
  await request.respond(code=Http200, content=content)
  system.quit(errorcode=QuitSuccess)

proc error*(request: Request) {.async.} =
  let content = "Cannot process request."
  await request.respond(code=Http404, content=content)