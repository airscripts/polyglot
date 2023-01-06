import std/json
import std/asyncdispatch

from std/strformat import fmt
from std/times import now, utc, DateTime, format
from std/asynchttpserver import Request, respond, Http404, Http200

proc root*(request: Request) {.async.} =
  let content = "This is where everything begins."
  await request.respond(code=Http200, content=content)

proc ping*(request: Request) {.async.} =
  let content = "pong"
  await request.respond(code=Http200, content=content)

proc status*(request: Request) {.async.} =
  let status: bool = true
  let version: string = "1.0"
  let date = now().format("yyyy-MM-dd '@' hh:mm:ss")
  let content = %* {"status": status, "version": version, "date": date}
  await request.respond(code=Http200, content=fmt"{content}")

proc poweroff*(request: Request) {.async.} =
  let content: string = fmt"shutdown: {true}"
  await request.respond(code=Http200, content=content)
  system.quit(errorcode=QuitSuccess)

proc hello*(request: Request) {.async.} = 
  let content = "Hello, World!"
  await request.respond(code=Http200, content=content)

proc error*(request: Request) {.async.} =
  let content = "Cannot process request."
  await request.respond(code=Http404, content=content)