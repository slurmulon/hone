defmodule Hone.Repo.Migrations.CreateNote do
  use Ecto.Migration

  def change do
    create table(:notes) do
      add :body, :string
      add :user_id, references(:units, on_delete: :nilify_all)
      add :unit_id, references(:units, on_delete: :delete_all)

      timestamps
    end

    create index(:notes, [:user_id])
    create index(:notes, [:unit_id])
  end
end
