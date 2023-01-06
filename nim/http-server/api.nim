import std/asyncdispatch
from std/asynchttpserver import Request, respond, Http404

proc root*() =
  discard

proc ping*() =
  discard

proc hello*() = 
  discard

proc error*(request: Request) {.async.} =
  let content = "Cannot process request."
  await request.respond(code=Http404, content=content)