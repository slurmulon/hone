defmodule Hone.Note do
  use Ecto.Schema
  alias Hone.Unit

  schema "notes" do
    field :body, :string
    belongs_to :unit, Unit
    timestamps
  end
end
