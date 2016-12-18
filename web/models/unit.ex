defmodule Hone.Unit do
  use Hone.Web, :model

  schema "units" do
    field :title, :string
    field :body, :string
    field :size, :integer
    has_many :units, Hone.Unit, on_delete: :delete_all
    has_many :tags, Hone.Tag
    has_many :notes, Hone.Note, on_delete: :delete_all
    belongs_to :unit, Hone.Unit
    belongs_to :stage, Hone.Stage
    belongs_to :board, Hone.Board
    many_to_many :users, Hone.User, join_through: "users_units"

    timestamps
  end

  # @required_fields ~w(title body size)
  # @optional_fields ~w(units tags notes stage)

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ %{}) do
    model
    |> cast(params, [:title, :body, :size])
    |> validate_required([:title])
  end
end
