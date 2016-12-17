defmodule Hone.Repo.Migrations.CreateTag do
  use Ecto.Migration

  def change do
    create table(:tags) do
      add :label, :string
      add :color, :string
      add :unit_id, references(:units, on_delete: :nothing)

      timestamps
    end
    create index(:tags, [:unit_id])

  end
end
