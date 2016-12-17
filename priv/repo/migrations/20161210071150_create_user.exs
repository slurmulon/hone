defmodule Hone.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :given_name, :string
      add :family_name, :string
      add :email, :string
      add :username, :string
      add :password, :string
      add :encrypted_password, :string
      add :avatar, :string
      add :confirmed, :boolean, default: false

      timestamps
    end

    create table(:users_projects) do
      add :user_id, references(:users)
      add :project_id, references(:projects)
    end

    create table(:users_boards) do
      add :user_id, references(:users)
      add :board_id, references(:boards)
    end

    create table(:users_units) do
      add :user_id, references(:users)
      add :unit_id, references(:units)
    end
  end
end
