defmodule Hone.Repo.Migrations.CreateCoreTables do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :first_name, :string
      add :last_name, :string
      add :email, :string, unique: true
      add :username, :string, unique: true
      add :encrypted_password, :string, null: false
      add :avatar, :string, null: true
      add :confirmed, :boolean, default: false
      timestamps
    end

    create table(:projects) do
      add :name, :string
      timestamps
    end

    create table(:boards) do
      add :name, :string
      add :project_id, references(:projects)
      timestamps
    end

    create table(:stages) do
      add :name, :string, unique: true
      add :order, :integer, default: 0
      add :project_id, references(:boards)
      timestamps
    end

    create table(:units) do
      add :title, :string
      add :body, :string
      add :size, :integer
      add :project_id, references(:projects)
      add :stage_id, references(:stages)
      add :units, references(:units)
      timestamps
    end

    create table(:tags) do
      add :label, :string
      add :color, :string
      timestamps
    end

    # TODO: create index(:users, [:name], unique: true)

    create table(:users_projects) do
      add :user_id, references(:users)
      add :project_id, references(:projects)
    end

    create table(:users_boards) do
      add :user_id references(:users)
      add :board_id, references(:boards)
    end

    create table(:users_units) do
      add :user_id, references(:users)
      add :unit_id, references(:units)
    end
  end
end
