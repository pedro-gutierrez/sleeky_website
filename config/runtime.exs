import Config

if config_env() in [:dev, :prod] do
  config :logger,
    level: "LOG_LEVEL" |> System.fetch_env!() |> String.to_existing_atom()

  config :sleeky_website, SleekyWebsite.Repo,
    ssl: false,
    socket_options: [:inet6],
    url: System.fetch_env!("DATABASE_URL"),
    pool_size: "DATABASE_POOL_SIZE" |> System.fetch_env!() |> String.to_integer()

  config :sleeky_website, SleekyWebsite.Port,
    scheme: :http,
    port: "PORT" |> System.fetch_env!() |> String.to_integer()
end
