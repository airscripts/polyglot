import std/asyncdispatch
import std/asynchttpserver

from router as root import router
from constants as constants import SERVER_PORT, SERVER_SLEEP

proc main() {.async.} =
  var server: AsyncHttpServer = newAsyncHttpServer()
  server.listen(port=Port(SERVER_PORT))

  while true:
    if server.shouldAcceptRequest():
      await server.acceptRequest(callback=root.router)

    else:
      await sleepAsync(SERVER_SLEEP)

when isMainModule:
  waitFor main()