defmodule SleekyWebsite.Port do
  @moduledoc false

  def child_spec(_) do
    Supervisor.child_spec(
      {Bandit,
       :sleeky_website
       |> Application.fetch_env!(__MODULE__)
       |> Keyword.put(:plug, SleekyWebsite.Router)},
      []
    )
  end
end
