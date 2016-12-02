defmodule Hone.Stage do
  use Ecto.Schema
  alias Hone.{Unit, Board}

  schema "stages" do
    field :name, :string, unique: true
    field :order, :integer, default: 0
    belongs_to :boards, Board
    has_many :units, Unit
  end
end
