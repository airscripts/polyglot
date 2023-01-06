import std/asyncdispatch 
import std/asynchttpserver

from api as api import root, ping, status, hello, error

proc router*(request: Request) {.async.} =
  let path = request.url.path

  case path:
    of "/": await request.root()
    of "/ping": await request.ping()
    of "/status": await request.status()
    of "/hello": await request.hello()
    else: await request.error()