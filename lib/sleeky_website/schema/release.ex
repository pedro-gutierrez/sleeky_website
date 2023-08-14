defmodule SleekyWebsite.Schema.Release do
  @moduledoc false
  use Sleeky.Entity

  primary_key(:id, :string)

  attribute :vsn, :string

  action :read do
    allow(:anonymous)
  end
end
