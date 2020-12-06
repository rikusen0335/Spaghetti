# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of Mix.Config.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
use Mix.Config

# Configure Mix tasks and generators
config :spaghetti,
  ecto_repos: [Spaghetti.Repo]

config :spaghetti_web,
  ecto_repos: [Spaghetti.Repo],
  generators: [context_app: :spaghetti]

# Configures the endpoint
config :spaghetti_web, SpaghettiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "m3/aX+/5OUxlPi76y1VTAXCWwBQI/QLu1FWjHkGirBYce3znwlMDueRmYlR8HuJU",
  render_errors: [view: SpaghettiWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Spaghetti.PubSub,
  live_view: [signing_salt: "yHy4Lx2U"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
