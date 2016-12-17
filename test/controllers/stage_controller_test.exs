defmodule Hone.StageControllerTest do
  use Hone.ConnCase

  alias Hone.Stage
  @valid_attrs %{name: "some content", order: 42}
  @invalid_attrs %{}

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  test "lists all entries on index", %{conn: conn} do
    conn = get conn, stage_path(conn, :index)
    assert json_response(conn, 200)["data"] == []
  end

  test "shows chosen resource", %{conn: conn} do
    stage = Repo.insert! %Stage{}
    conn = get conn, stage_path(conn, :show, stage)
    assert json_response(conn, 200)["data"] == %{"id" => stage.id,
      "name" => stage.name,
      "order" => stage.order,
      "board_id" => stage.board_id}
  end

  test "does not show resource and instead throw error when id is nonexistent", %{conn: conn} do
    assert_error_sent 404, fn ->
      get conn, stage_path(conn, :show, -1)
    end
  end

  test "creates and renders resource when data is valid", %{conn: conn} do
    conn = post conn, stage_path(conn, :create), stage: @valid_attrs
    assert json_response(conn, 201)["data"]["id"]
    assert Repo.get_by(Stage, @valid_attrs)
  end

  test "does not create resource and renders errors when data is invalid", %{conn: conn} do
    conn = post conn, stage_path(conn, :create), stage: @invalid_attrs
    assert json_response(conn, 422)["errors"] != %{}
  end

  test "updates and renders chosen resource when data is valid", %{conn: conn} do
    stage = Repo.insert! %Stage{}
    conn = put conn, stage_path(conn, :update, stage), stage: @valid_attrs
    assert json_response(conn, 200)["data"]["id"]
    assert Repo.get_by(Stage, @valid_attrs)
  end

  test "does not update chosen resource and renders errors when data is invalid", %{conn: conn} do
    stage = Repo.insert! %Stage{}
    conn = put conn, stage_path(conn, :update, stage), stage: @invalid_attrs
    assert json_response(conn, 422)["errors"] != %{}
  end

  test "deletes chosen resource", %{conn: conn} do
    stage = Repo.insert! %Stage{}
    conn = delete conn, stage_path(conn, :delete, stage)
    assert response(conn, 204)
    refute Repo.get(Stage, stage.id)
  end
end
