defmodule SleekyWebsite.Auth do
  @moduledoc false
  use Sleeky.Auth

  roles [:current_user, :roles]

  scope :owner do
    "**.user" == "current_user"
  end

  scope :self do
    "id" == "current_user.id"
  end
end
