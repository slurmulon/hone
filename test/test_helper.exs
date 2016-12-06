defmodule Hone.Case do
  use ExUnit.CaseTemplate
  alias Ecto.Adapters.SQL
  alias Hone.Repo

  setup do
    SQL.begin_test_transaction(Repo)

    on_exit fn ->
      SQL.rollback_test_transaction(Repo)
    end
  end

  using do
    quote do
      alias Hone.Repo
      alias Hone.Contact
      use Plug.Test

      def send_request(conn) do
        conn
        |> put_private(:plug_skip_csrf_protection, true)
        |> Hone.Endpoint.call([])
      end
    end
  end
end

ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Hone.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Hone.Repo --quiet)
# Ecto.Adapters.SQL.begin_test_transaction(Hone.Repo)

