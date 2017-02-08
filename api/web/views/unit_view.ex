defmodule Hone.UnitView do
  use Hone.Web, :view

  def render("index.json", %{units: units}) do
    %{data: render_many(units, Hone.UnitView, "unit.json")}
  end

  def render("show.json", %{unit: unit}) do
    %{data: render_one(unit, Hone.UnitView, "unit.json")}
  end

  def render("unit.json", %{unit: unit}) do
    %{id: unit.id,
      title: unit.title,
      body: unit.body,
      size: unit.size,
      stage_id: unit.stage_id}
  end
end
