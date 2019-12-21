# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :fix_machine,
  ecto_repos: [FixMachine.Repo]

# Configures the endpoint
config :fix_machine, FixMachineWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "0NCquLUMtZwIRbTZNJ5w/iCA8jcO55ZTWolGQP80161Sw6IVr+d9xNSIkMT5J0YQ",
  render_errors: [view: FixMachineWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: FixMachine.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
