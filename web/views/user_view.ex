defmodule Hone.UserView do
  use Hone.Web, :view

  def render("index.json", %{users: users}) do
    users
  end

  def render("show.json", %{user: user}) do
    user
  end
end
