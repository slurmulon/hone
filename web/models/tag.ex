defmodule Hone.Tag do
  use Hone.Web, :model

  schema "tags" do
    field :label, :string
    field :color, :string
    belongs_to :unit, Hone.Unit

    timestamps
  end

  # @required_fields ~w(label color)
  # @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ %{}) do
    model
    # |> cast(params, @required_fields, @optional_fields)
    |> cast(params, [:label, :color])
    |> validate_required([:label, :color])
  end
end
