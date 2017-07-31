# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :hello_phoenix, HelloPhoenix.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "FvVzPI+rxaPgLcD+Ytcxm+ep2Dr90XtQNMZULm64+VYh3eC4ziycEA/wahH0a87u",
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: HelloPhoenix.PubSub,
           adapter: Phoenix.PubSub.PG2]

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

config :sentry, dsn: "https://fcd3dcffe51c410cbed71ab8b6ac69ed:541d5544819f4c2380c597adf0236362@sentry.io/197085",
  included_environments: [:prod, :dev, :test],
  use_error_logger: true,
  environment_name: Mix.env,
  enable_source_code_context: false
