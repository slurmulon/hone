defmodule Hone.User do
  use Hone.Web, :model

  schema "users" do
    field :given_name, :string
    field :family_name, :string
    field :email, :string
    field :username, :string
    field :password, :string
    field :encrypted_password, :string
    field :avatar, :string
    field :confirmed, :boolean, default: false

    timestamps
  end

  @required_fields ~w(given_name family_name email username password encrypted_password avatar confirmed)
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
