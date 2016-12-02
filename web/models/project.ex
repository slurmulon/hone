defmodule Hone.Project do
  use Ecto.Schema
  alias Hone.{User, Board}

  import Ecto.Changeset

  schema "projects" do
    field :name, :string
    has_many :boards, Board, on_delete: :delete_all
    many_to_many :users, User, join_through: "users_projects"
    timestamps
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name])
    |> validate_required([:name])
   end
end
