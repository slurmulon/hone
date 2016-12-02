defmodule Hone.User do
  use Ecto.Schema
  alias Hone.{Project, Unit}

  schema "users" do
    field :given_name, :string
    field :family_name, :string
    field :email, :string, unique: true
    field :username, :string, unique: true
    field :password, :string, virtual: true
    field :encrypted_password, :string, null: false
    field :avatar, :string, null: true
    field :confirmed, :boolean, default: false
    many_to_many :projects, Project, join_through: "users_projects"
    many_to_many :boards, Board, join_through: "users_boards"
    many_to_many :units, Unit, join_through: "users_units"
    timestamps
  end

end
