import Config

config :logger, level: :warn

config :sleeky_website, SleekyWebsite.Repo,
  url: "postgres://sleeky_website:sleeky_website@localhost/sleeky_website_test",
  pool: Ecto.Adapters.SQL.Sandbox

config :sleeky_website, SleekyWebsite.Port,
  scheme: :http,
  port: 8079
