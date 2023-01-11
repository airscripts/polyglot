import std/asyncdispatch 
import std/asynchttpserver

from api as api import ping, error, poweroff

proc router*(request: Request) {.async.} =
  let path = request.url.path

  case path:
    of "/ping": await request.ping()
    of "/poweroff": await request.poweroff()
    else: await request.error()