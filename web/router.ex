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

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  scope "/api", Hone do
    pipe_through :api

    resources "/v1/boards", BoardController, except: [:new, :edit]
    resources "/v1/projects", ProjectController, except: [:new, :edit]
    resources "/v1/stages", StageController, except: [:new, :edit]
    resources "/v1/units", UnitController, except: [:new, :edit]
    resources "/v1/notes", NoteController, except: [:new, :edit]
    resources "/v1/tags", TagController, except: [:new, :edit]
    resources "/v1/users", UserController, except: [:new, :edit]
  end
end
