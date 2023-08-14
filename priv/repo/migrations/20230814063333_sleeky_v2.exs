defmodule Sleeky.Migration.V2 do
  use Ecto.Migration

  def up do
    create(table(:releases, primary_key: false)) do
      add(:id, :string, primary_key: true, null: false)
      add(:vsn, :string, null: false)
      timestamps()
    end

    alter(table(:users)) do
      remove(:display)
    end
  end

  def down do
    []
  end
end