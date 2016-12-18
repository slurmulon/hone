defmodule Hone.Repo.Migrations.CreateBoard do
  use Ecto.Migration

  def change do
    create table(:boards) do
      add :name, :string
      add :project_id, references(:projects, on_delete: :delete_all)

      timestamps
    end

    create index(:boards, [:project_id])
  end
end
