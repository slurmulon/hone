defmodule Hone.Repo.Migrations.CreateNote do
  use Ecto.Migration

  def change do
    create table(:notes) do
      add :body, :string
      add :unit_id, references(:units, on_delete: :nothing)

      timestamps
    end
    create index(:notes, [:unit_id])

  end
end
