defmodule SleekyWebsite.Migrate do
  @moduledoc false
  use Task

  @otp_app :sleeky_website

  @doc false
  def start_link(_), do: Task.start_link(__MODULE__, :run, [])

  @doc false
  def run do
    for repo <- Application.fetch_env!(@otp_app, :ecto_repos) do
      {:ok, _, _} = Ecto.Migrator.with_repo(repo, &Ecto.Migrator.run(&1, :up, all: true))
    end
  end
end
