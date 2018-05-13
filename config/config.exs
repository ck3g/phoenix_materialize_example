# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_materialize_example,
  ecto_repos: [PhoenixMaterializeExample.Repo]

# Configures the endpoint
config :phoenix_materialize_example, PhoenixMaterializeExampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "FY5N/4upM8ZSKFrZe6BtiSX+I9VqUGvzZVsWwILt35mS6+PgEZIqvxbyW2IMzbvg",
  render_errors: [view: PhoenixMaterializeExampleWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixMaterializeExample.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
