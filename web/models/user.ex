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

  # @required_fields ~w(given_name family_name email username password encrypted_password avatar confirmed)
  # @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ %{}) do
    model
    # |> cast(params, @required_fields, @optional_fields)
    |> cast(params, [:given_name, :family_name, :email, :username, :password, :avatar, :confirmed])
    |> validate_required([:given_name, :family_name, :email, :username, :password])
    |> validate_length(:password, min: 8, max: 64)
    |> validate_format(:email, ~r/^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$/)
    # |> hash_password()
    # |> enable_user()
    |> unique_constraint(:username, name: :app_user_username_key)
    |> unique_constraint(:email, name: :app_user_email_key)
  end

  defp hash_password(changeset) do
    case changeset do
      %Ecto.Changeset{valid?: true, changes: %{plain_password: pass}} ->
        newChangeset = changeset
          |> put_change(:password, Comeonin.Bcrypt.hashpwsalt(pass))
        newChangeset |> put_change(:salt, "salt")
      _ ->
        IO.puts "failed?"
        changeset
    end
  end
end
