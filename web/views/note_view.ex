defmodule Hone.NoteView do
  use Hone.Web, :view

  def render("index.json", %{notes: notes}) do
    %{data: render_many(notes, Hone.NoteView, "note.json")}
  end

  def render("show.json", %{note: note}) do
    %{data: render_one(note, Hone.NoteView, "note.json")}
  end

  def render("note.json", %{note: note}) do
    %{id: note.id,
      body: note.body,
      unit_id: note.unit_id}
  end
end
