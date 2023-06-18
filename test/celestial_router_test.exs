defmodule CelestialRouterTest do
  # Bringing ExUnit's case module to scope and configure it to run
  # tests in this module concurrently with tests in other modules
  # https://hexdocs.pm/ex_unit/ExUnit.Case.html
  use ExUnit.Case, async: true

  # This makes the conn object avaiable in the scope of the tests,
  # which can be used to make the HTTP request
  # https://hexdocs.pm/plug/Plug.Test.html
  use Plug.Test

  # We call the Plug init/1 function with the options then store
  # returned options in a Module attribute opts.
  # Note: @ is module attribute unary operator
  # https://hexdocs.pm/elixir/main/Kernel.html#@/1
  # https://hexdocs.pm/plug/Plug.html#c:init/1
  @opts Celestial.Router.init([])

  # Create a test with the name "return ok"
  test "return ok" do
    conn = conn(:get, "/")
    conn = Celestial.Router.call(conn, @opts)

    assert conn.state == :sent
    assert conn.status == 200
    assert conn.resp_body == "OK"
  end

  test "return 1.0 as the version" do
    conn = conn(:get, "/version")
    conn = Celestial.Router.call(conn, @opts)

    assert conn.state == :sent
    assert conn.status == 200
    assert conn.resp_body == "1.0"
  end

  test "return Not Found from a random url" do
    conn = conn(:get, "/random-url")
    conn = Celestial.Router.call(conn, @opts)

    assert conn.state == :sent
    assert conn.status == 404
    assert conn.resp_body == "Not Found"
  end
end
