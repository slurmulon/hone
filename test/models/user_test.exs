defmodule Hone.UserTest do
  use Hone.ModelCase

  alias Hone.User

  @valid_attrs %{avatar: "some content", confirmed: true, email: "some content", encrypted_password: "some content", family_name: "some content", given_name: "some content", password: "some content", username: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end
end
