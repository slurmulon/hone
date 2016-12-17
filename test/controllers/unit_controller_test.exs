defmodule Hone.UnitControllerTest do
  use Hone.ConnCase, async: true

  alias Hone.Unit
  @valid_attrs %{body: "some content", size: 42, title: "some content"}
  @invalid_attrs %{}

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  test "lists all entries on index", %{conn: conn} do
    conn = get conn, unit_path(conn, :index)
    assert json_response(conn, 200)["data"] == []
  end

  test "shows chosen resource", %{conn: conn} do
    unit = Repo.insert! %Unit{}
    conn = get conn, unit_path(conn, :show, unit)
    assert json_response(conn, 200)["data"] == %{"id" => unit.id,
      "title" => unit.title,
      "body" => unit.body,
      "size" => unit.size,
      "stage_id" => unit.stage_id}
  end

  test "does not show resource and instead throw error when id is nonexistent", %{conn: conn} do
    assert_error_sent 404, fn ->
      get conn, unit_path(conn, :show, -1)
    end
  end

  test "creates and renders resource when data is valid", %{conn: conn} do
    conn = post conn, unit_path(conn, :create), unit: @valid_attrs
    assert json_response(conn, 201)["data"]["id"]
    assert Repo.get_by(Unit, @valid_attrs)
  end

  test "does not create resource and renders errors when data is invalid", %{conn: conn} do
    conn = post conn, unit_path(conn, :create), unit: @invalid_attrs
    assert json_response(conn, 422)["errors"] != %{}
  end

  test "updates and renders chosen resource when data is valid", %{conn: conn} do
    unit = Repo.insert! %Unit{}
    conn = put conn, unit_path(conn, :update, unit), unit: @valid_attrs
    assert json_response(conn, 200)["data"]["id"]
    assert Repo.get_by(Unit, @valid_attrs)
  end

  test "does not update chosen resource and renders errors when data is invalid", %{conn: conn} do
    unit = Repo.insert! %Unit{}
    conn = put conn, unit_path(conn, :update, unit), unit: @invalid_attrs
    assert json_response(conn, 422)["errors"] != %{}
  end

  test "deletes chosen resource", %{conn: conn} do
    unit = Repo.insert! %Unit{}
    conn = delete conn, unit_path(conn, :delete, unit)
    assert response(conn, 204)
    refute Repo.get(Unit, unit.id)
  end
end
