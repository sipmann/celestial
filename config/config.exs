import Config

config :celestial, Celestial.Repo,
  database: "celestial",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"

config :celestial, ecto_repos: [Celestial.Repo]
