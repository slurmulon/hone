defmodule Hone.StageView do
  use Hone.Web, :view

  def render("index.json", %{stages: stages}) do
    %{data: render_many(stages, Hone.StageView, "stage.json")}
  end

  def render("show.json", %{stage: stage}) do
    %{data: render_one(stage, Hone.StageView, "stage.json")}
  end

  def render("stage.json", %{stage: stage}) do
    %{id: stage.id,
      name: stage.name,
      order: stage.order,
      board_id: stage.board_id}
  end
end
