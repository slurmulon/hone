defmodule Hone.Stage do
  use Hone.Web, :model

  schema "stages" do
    field :name, :string, unique: true
    field :order, :integer, default: 0
    belongs_to :board, Hone.Board
    has_many :units, Hone.Unit

    timestamps
  end

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ %{}) do
    model
    |> cast(params, [:name, :order])
    |> validate_required([:name])
  end
end
