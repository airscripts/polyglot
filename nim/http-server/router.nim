import std/asyncdispatch 
import std/asynchttpserver

from api as api import root, ping, hello, error

proc router*(req: Request) {.async.} =
  let path = req.url.path

  case path:
    of "/": root()
    of "/ping": ping()
    of "/hello": hello()
    else: error()