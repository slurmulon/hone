defmodule Hone.Board do
  use Hone.Web, :model

  schema "boards" do
    field :name, :string
    has_many :stages, Hone.Stage, on_delete: :delete_all
    has_many :units, Hone.Unit, on_delete: :delete_all
    many_to_many :users, Hone.User, join_through: "users_boards"
    belongs_to :project, Hone.Project

    timestamps
  end

  @required_fields ~w(name)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
