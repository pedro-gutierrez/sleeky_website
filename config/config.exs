import Config

config :sleeky_website, ecto_repos: [SleekyWebsite.Repo]
config :sleeky, schema: SleekyWebsite.Schema

config :logger, :console,
  format: "$time [$level] $message: $metadata
",
  metadata: [:reason]

import_config "#{config_env()}.exs"
