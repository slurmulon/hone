defmodule Hone.Board do
  use Ecto.Schema
  alias Hone.{User, Unit, Stage}

  import Ecto.Changeset

  schema "boards" do
    field :name, :string
    has_many :stages, Stage, on_delete: :delete_all
    has_many :units, Unit, on_delete: :delete_all
    many_to_many :users, User, join_through: "users_boards"
    belongs_to :project, Project
    timestamps
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :stages, :units, :users, :project])
    |> validate_required([:name, :project])
  end
end
