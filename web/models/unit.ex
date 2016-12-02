defmodule Hone.Unit do
  use Ecto.Schema
  alias Hone.{User, Project, Stage, Tag}

  schema "units" do
    field :title, :string
    field :body, :string
    field :size, :integer
    has_many :units, Unit, on_delete: :delete_all
    has_many :tags, Tag
    has_many :notes, Note, on_delete: :delete_all
    belongs_to :stage, Stage
    many_to_many :users, User, join_through: "users_units"
    timestamps
  end
end
