defmodule Hone.Repo.Migrations.CreateUnit do
  use Ecto.Migration

  def change do
    create table(:units) do
      add :title, :string
      add :body, :string
      add :size, :integer
      add :stage_id, references(:stages, on_delete: :nilify_all)

      timestamps
    end

    create index(:units, [:stage_id])
  end
end
