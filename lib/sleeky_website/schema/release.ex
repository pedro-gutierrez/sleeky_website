defmodule SleekyWebsite.Schema.Release do
  @moduledoc false
  use Sleeky.Entity

  attribute :id, :string do
    primary_key()
  end

  attribute :vsn, :string

  action :read do
    allow(:anonymous)
  end
end
