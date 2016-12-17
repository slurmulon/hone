ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Hone.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Hone.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Hone.Repo)

