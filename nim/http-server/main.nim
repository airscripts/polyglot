import std/asyncdispatch
import std/asynchttpserver

proc `root`(req: Request) {.async.} =
  let headers: array = {"Content-Type": "text/plain; charset=utf-8"}
  let response: string = "Hello, World!"

  await req.respond(
    code=Http200,
    content=response,
    headers=headers.newHttpHeaders()
  )

proc main() {.async.} =
  let port: int = 25501
  var server: AsyncHttpServer = newAsyncHttpServer()

  server.listen(port=Port(port))

  while true:
    if server.shouldAcceptRequest():
      await server.acceptRequest(callback=root)

    else:
      await sleepAsync(500)


when isMainModule:
  waitFor main()