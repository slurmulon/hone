defmodule Hone.Project do
  use Ecto.Schema
  alias Hone.{User, Unit, Stage}

  schema "projects" do
    field :name, :string
    has_many :stages, Stage, on_delete: :delete_all
    has_many :units, Unit, on_delete: :delete_all
    many_to_many :users, User, join_through: "users_projects"
    timestamps
  end
end
