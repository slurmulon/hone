defmodule Hone.PageController do
  use Hone.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
