defmodule Hone.UserControllerTest do
  use Hone.Case, async: false

  test "/index returns a list of users" do
    users_json =
      %User{given_name: "Bob", family_name: "Saget", email: "bob@madhax.io", username: "bob", password: "test"}
      |> Repo.insert
      |> List.wrap
      |> Poison.encode!

    response = conn(:get, "/api/users") |> send_request

    assert response.status == 200
    assert response.resp_body == users_json
  end
end
