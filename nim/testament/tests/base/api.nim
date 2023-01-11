import std/unittest
import std/asyncdispatch

from std/strformat import fmt

from std/httpclient import 
  request,
  HttpGet,
  AsyncResponse,
  AsyncHttpClient,
  newAsyncHttpClient

from ../constants as constants import
  PORT,
  PING_API,
  HOSTNAME,
  PROTOCOL,
  STATUS_OK

const SERVER_ADDRESS: string = 
  fmt"{constants.PROTOCOL}://{constants.HOSTNAME}:{constants.PORT}"

suite "APIs Test Suite":
  var client: AsyncHttpClient
  var clientPtr: ptr AsyncHttpClient = client.addr

  setup:
    client = newAsyncHttpClient()

  teardown:
    reset(client)
    dealloc clientPtr

  test "Ping API":
    proc ping() {.async.} =
      let response: AsyncResponse = await client.request(
        url=fmt"{SERVER_ADDRESS}{PING_API}", 
        httpMethod=HttpGet
      )

      check response.status == constants.STATUS_OK

    waitFor(ping())