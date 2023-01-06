import std/asyncdispatch
import std/asynchttpserver

from router as root import router

proc main() {.async.} =
  let port: int = 25501
  var server: AsyncHttpServer = newAsyncHttpServer()

  server.listen(port=Port(port))

  while true:
    if server.shouldAcceptRequest():
      await server.acceptRequest(callback=root.router)

    else:
      await sleepAsync(500)


when isMainModule:
  waitFor main()