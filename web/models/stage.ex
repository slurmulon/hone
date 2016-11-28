defmodule Hone.Stage do
  use Ecto.Schema
  alias Hone.{Unit, Project}

  schema "stages" do
    field :name, :string, unique: true
    field :order, :integer, default: 0
    belongs_to :projects, Project
    has_many :units, Unit
  end
end
