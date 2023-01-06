import std/asyncdispatch 
import std/asynchttpserver

from api as api import root, ping, hello, error

proc router*(request: Request) {.async.} =
  let path = request.url.path

  case path:
    of "/": root()
    of "/ping": ping()
    of "/hello": hello()
    else: await error(request=request)