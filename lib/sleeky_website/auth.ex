defmodule SleekyWebsite.Auth do
  @moduledoc "Takes care of authentication and authorization concerns"
  use Plug.Builder
  use Sleeky.Auth

  plug :put_user

  @doc false
  def put_user(conn, _opts) do
    # sample user
    assign(conn, :current_user, %{id: "123", roles: [:admin]})
  end

  roles [:current_user, :roles]

  scope :owner do
    "**.user" == "current_user"
  end

  scope :self do
    "id" == "current_user.id"
  end
end
