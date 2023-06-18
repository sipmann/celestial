import Config

config :celestial, Celestial.Repo,
  database: "celestial",
  username: "user",
  password: "pass",
  hostname: "localhost"

config :celestial, ecto_repos: [Celestial.Repo]
