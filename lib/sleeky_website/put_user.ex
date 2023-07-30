defmodule SleekyWebsite.PutUser do
  @moduledoc false

  @behaviour Plug
  import Plug.Conn

  @impl true
  def init(opts), do: opts

  @impl true
  def call(conn, _opts) do
    # sample user
    assign(conn, :current_user, %{id: "123", roles: [:admin]})
  end
end
