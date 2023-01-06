import std/asyncdispatch 
import std/asynchttpserver

proc router*(req: Request) {.async.} =
  let path = req.url.path

  case path:
    of "/": discard
    of "/ping": discard
    of "/hello": discard
    else: discard