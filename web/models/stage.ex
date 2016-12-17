defmodule Hone.Stage do
  use Hone.Web, :model

  schema "stages" do
    field :name, :string, unique: true
    field :order, :integer, default: 0
    belongs_to :board, Hone.Board
    has_many :units, Unit

    timestamps
  end

  @required_fields ~w(name order)
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
