# @see: http://www.phoenixframework.org/v0.13.1/docs/ecto-models
defmodule Hone.UserController do
  use Hone.Web, :controller

  alias Hone.User

  # ? confused why `action` works or why it's defined
  plug :scrub_params, "user" when action in [:create, :update]

  def index(conn, _params) do
    users = Repo.all(User)
    json conn, users
    # render conn, "index.json", users: users
  end

  def show(conn,  %{"id" => id}) do
    user = Repo.get(User, id)
    json conn, user
  end

  def create(conn, %{"user" => params}) do
    changeset = User.changeset(%User{}, params)

    if changeset.valid? do
      Repo.insert(changeset)
    end

    json conn, changeset
  end

  def udpate(conn, %{"id" => id, "user" => params}) do
    user = Repo.get(User, id)
    changeset = User.changeset(user, params)

    if changeset.valid? do
      Repo.update(changeset)
    end

    json conn, changeset
  end

  def delete(conn, %{"id" => id}) do
    user = Repo.get(User, id)

    Repo.delete(user)

    json conn, user
  end

end
