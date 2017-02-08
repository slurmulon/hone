defmodule Hone.TagView do
  use Hone.Web, :view

  def render("index.json", %{tags: tags}) do
    %{data: render_many(tags, Hone.TagView, "tag.json")}
  end

  def render("show.json", %{tag: tag}) do
    %{data: render_one(tag, Hone.TagView, "tag.json")}
  end

  def render("tag.json", %{tag: tag}) do
    %{id: tag.id,
      label: tag.label,
      color: tag.color,
      unit_id: tag.unit_id}
  end
end
