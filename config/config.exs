# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :catcast,
  ecto_repos: [Catcast.Repo]

# Configures the endpoint
config :catcast, CatcastWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "XRhS1irPReLfVKaKhsdzr44mvBJ6R+zf8yaQtZkx2E6/y4udXnuu5ncT54syolgt",
  render_errors: [view: CatcastWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Catcast.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
