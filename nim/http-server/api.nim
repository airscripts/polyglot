import std/asyncdispatch
from std/asynchttpserver import Request, respond, Http404, Http200

proc root*(request: Request) {.async.} =
  let content = "This is where everything begins."
  await request.respond(code=Http200, content=content)

proc ping*() =
  discard

proc hello*() = 
  discard

proc error*(request: Request) {.async.} =
  let content = "Cannot process request."
  await request.respond(code=Http404, content=content)