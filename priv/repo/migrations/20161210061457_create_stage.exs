defmodule Hone.Repo.Migrations.CreateStage do
  use Ecto.Migration

  def change do
    create table(:stages) do
      add :name, :string
      add :order, :integer, default: 0
      add :board_id, references(:boards, on_delete: :delete_all)

      timestamps
    end
    create unique_index(:stages, [:name])
    create index(:stages, [:board_id])

  end
end
