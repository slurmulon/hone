defmodule Hone.PageControllerTest do
  use Hone.ConnCase, async: true

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Welcome to Hone"
  end
end
