import std/asyncdispatch

from std/strformat import fmt
from std/asynchttpserver import Request, respond, Http404, Http200

proc root*(request: Request) {.async.} =
  let content = "This is where everything begins."
  await request.respond(code=Http200, content=content)

proc ping*(request: Request) {.async.} =
  let content = "pong"
  await request.respond(code=Http200, content=content)

proc status*(request: Request) {.async.} =
  let content: string = fmt"status: {true}"
  await request.respond(code=Http200, content=content)

proc hello*(request: Request) {.async.} = 
  let content = "Hello, World!"
  await request.respond(code=Http200, content=content)

proc error*(request: Request) {.async.} =
  let content = "Cannot process request."
  await request.respond(code=Http404, content=content)