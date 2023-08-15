defmodule Sleeky.Migration.V3 do
  use Ecto.Migration

  def up do
    alter(table(:users)) do
      modify(:id, :binary_id, [])
    end
  end

  def down do
    []
  end
end