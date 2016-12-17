defmodule Hone.BoardView do
  use Hone.Web, :view

  def render("index.json", %{boards: boards}) do
    %{data: render_many(boards, Hone.BoardView, "board.json")}
  end

  def render("show.json", %{board: board}) do
    %{data: render_one(board, Hone.BoardView, "board.json")}
  end

  def render("board.json", %{board: board}) do
    %{id: board.id,
      name: board.name,
      project_id: board.project_id}
  end
end
