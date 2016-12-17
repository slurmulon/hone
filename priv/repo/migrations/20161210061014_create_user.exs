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

  end
end
