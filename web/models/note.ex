defmodule Hone.Note do
  use Hone.Web, :model

  schema "notes" do
    field :body, :string
    belongs_to :user, Hone.User
    belongs_to :unit, Hone.Unit

    timestamps
  end

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ %{}) do
    model
    |> cast(params, [:body])
    |> validate_required([:body])
  end
end
