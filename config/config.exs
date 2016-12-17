# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :hone, Hone.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "hzIiPp7paQw+qWtL9AcSkWI4c6TPAaKlkN3un2B/35BOMmrCYciHK3JVdmw5IVSX",
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: Hone.PubSub,
           adapter: Phoenix.PubSub.PG2]

config :hone, ecto_repos: [Hone.Repo]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# Configure phoenix generators
config :phoenix, :generators,
  migration: true,
  binary_id: false
