defmodule Hone.StageController do
  use Hone.Web, :controller

  alias Hone.Stage

  plug :scrub_params, "stage" when action in [:create, :update]

  def index(conn, _params) do
    stages = Repo.all(Stage)
    render(conn, "index.json", stages: stages)
  end

  def create(conn, %{"stage" => stage_params}) do
    changeset = Stage.changeset(%Stage{}, stage_params)

    case Repo.insert(changeset) do
      {:ok, stage} ->
        conn
        |> put_status(:created)
        |> put_resp_header("location", stage_path(conn, :show, stage))
        |> render("show.json", stage: stage)
      {:error, changeset} ->
        conn
        |> put_status(:unprocessable_entity)
        |> render(Hone.ChangesetView, "error.json", changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    stage = Repo.get!(Stage, id)
    render(conn, "show.json", stage: stage)
  end

  def update(conn, %{"id" => id, "stage" => stage_params}) do
    stage = Repo.get!(Stage, id)
    changeset = Stage.changeset(stage, stage_params)

    case Repo.update(changeset) do
      {:ok, stage} ->
        render(conn, "show.json", stage: stage)
      {:error, changeset} ->
        conn
        |> put_status(:unprocessable_entity)
        |> render(Hone.ChangesetView, "error.json", changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    stage = Repo.get!(Stage, id)

    # Here we use delete! (with a bang) because we expect
    # it to always work (and if it does not, it will raise).
    Repo.delete!(stage)

    send_resp(conn, :no_content, "")
  end
end
