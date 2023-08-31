defmodule SleekyWebsite.Schema.User do
  @moduledoc false
  use Sleeky.Entity

  attribute :email, :string do
  end

  unique :email

  action :list do
    allow(:admin)
  end

  action :read do
    allow(:admin)
  end

  action :create do
    allow(:admin)
  end

  action :update do
    allow(:admin)
  end

  action :delete do
    allow(:admin)
  end
end
