defmodule Mix.Tasks.Celestial.Server do
  use Mix.Task

  @shortdoc "Start application and serve it"

  @moduledoc """
  Start the application with `mix celestial.server`
  """

  def run(_) do
    Mix.Task.run("app.start")
    unless iex_running?(), do: :timer.sleep(:infinity)
  end

  defp iex_running? do
    Code.ensure_loaded?(IEx) && IEx.started?()
  end
end
