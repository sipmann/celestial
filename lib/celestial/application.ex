defmodule Celestial.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application
  require Logger

  @impl true
  def start(_type, _args) do
    port = Application.get_env(:celestial, :port, 8080)

    children = [
      {Plug.Cowboy, scheme: :http, plug: Celestial.Router, options: [port: port]}
    ]

    opts = [strategy: :one_for_one, name: Celestial.Supervisor]

    Logger.info("Starting server on port #{port}")

    Supervisor.start_link(children, opts)
  end
end
