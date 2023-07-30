defmodule Sleeky.Migration.V1 do
  use Ecto.Migration

  def up do
    create(table(:users, primary_key: false)) do
      add(:display, :string, [])
      add(:email, :string, [])
      add(:id, :uuid, primary_key: true)
      timestamps()
    end

    create(unique_index(:users, [:email], name: :users_email_idx))
  end

  def down do
    []
  end
end