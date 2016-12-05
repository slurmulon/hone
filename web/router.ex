defmodule Hone.Router do
  use Hone.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Hone do
    pipe_through :browser # Use the default browser stack

  end

  scope "/api", Hone do
    pipe_through :api

    get "/", PageController, :index
    resources "/users", UserController
    # resources "/projects", ProjectController
    # resources "/boards", BoardController
    # resources "/stages", StageController
    # resources "/untis", UnitController # TODO: /units/:id/subs
  end
end
