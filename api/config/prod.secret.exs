use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :hone, Hone.Endpoint,
  secret_key_base: "MQl2k4Zfkj9zpin4N/klkCiFJbEihL0jomaLHHjkJaSPWbjUO1EvgSzSoNyQ9AE1"

# Configure your database
config :hone, Hone.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "hone_prod",
  pool_size: 20
