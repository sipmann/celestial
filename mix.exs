defmodule Celestial.MixProject do
  use Mix.Project

  def project do
    [
      app: :celestial,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Celestial.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:plug_cowboy, "~> 2.5"},
      {:jason, "~> 1.3"},

      # database deps
      {:ecto_sql, "~> 3.10.1"},
      {:postgrex, "~> 0.17.1"},

      # dev deps
      {:credo, "~> 1.7", only: [:dev, :test], runtime: false}
    ]
  end
end
