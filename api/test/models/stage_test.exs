defmodule Hone.StageTest do
  use Hone.ModelCase

  alias Hone.Stage

  @valid_attrs %{name: "some content", order: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Stage.changeset(%Stage{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Stage.changeset(%Stage{}, @invalid_attrs)
    refute changeset.valid?
  end
end
