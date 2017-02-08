defmodule Hone.UserView do
  use Hone.Web, :view

  def render("index.json", %{users: users}) do
    %{data: render_many(users, Hone.UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, Hone.UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      given_name: user.given_name,
      family_name: user.family_name,
      email: user.email,
      username: user.username,
      password: user.password,
      encrypted_password: user.encrypted_password,
      avatar: user.avatar,
      confirmed: user.confirmed}
  end
end
