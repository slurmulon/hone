defmodule Hone.Repo.Migrations.CreateUnit do
  use Ecto.Migration

  def change do
    create table(:units) do
      add :title, :string
      add :body, :string
      add :size, :integer
      add :unit_id, references(:units, on_delete: :delete_all)
      add :stage_id, references(:stages, on_delete: :nilify_all)
      add :board_id, references(:boards, on_delete: :delete_all)

      timestamps
    end

    create index(:units, [:unit_id])
    create index(:units, [:stage_id])
    create index(:units, [:board_id])
  end
end
