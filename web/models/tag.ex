defmodule Hone.Tag do
  use Ecto.Schema
  alias Hone.Unit

  schema "tags" do
    field :label, :string
    field :color, :string
    belongs_to :units, Unit
    timestamps
  end
end
