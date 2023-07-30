defmodule SleekyWebsite.Repo do
  @moduledoc false
  use Ecto.Repo, otp_app: :sleeky_website, adapter: Ecto.Adapters.Postgres
end
