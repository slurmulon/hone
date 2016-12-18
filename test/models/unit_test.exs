defmodule Hone.UnitTest do
  use Hone.ModelCase

  alias Hone.Unit

  @valid_attrs %{body: "some content", size: 42, title: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Unit.changeset(%Unit{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Unit.changeset(%Unit{}, @invalid_attrs)
    refute changeset.valid?
  end
end
