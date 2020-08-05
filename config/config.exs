# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :ioelixir,
  ecto_repos: [Ioelixir.Repo]

# Configures the endpoint
config :ioelixir, IoelixirWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "kbgf2U+9WIj7y8CZdvw0/IlVW1Fsk57ZU0Um59nLOdfI0yHzWo5GNd1XFMx72WTU",
  render_errors: [view: IoelixirWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Ioelixir.PubSub,
  live_view: [signing_salt: "JU7WJITk"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
