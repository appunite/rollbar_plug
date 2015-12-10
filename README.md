# RollbarPlug


## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add rollbar_plug to your list of dependencies in `mix.exs`:

          def deps do
            [{:rollbar_plug, "~> 0.0.1"}]
          end

  2. Ensure rollbar_plug is started before your application:

          def application do
            [applications: [:rollbar_plug]]
          end

  3. Configure rollbax as defined in [the rollbax docs](https://github.com/elixir-addicts/rollbax)

          config :rollbax,
          access_token: "some_token",
          environment: "production"

  4. Add application to router:

          defmodule ExampleApp.Router do
              use Phoenix.Router
              use RollbarPlug
              # Code
          end

## Credits
It is a copy of Roman Smirnov [Airbrake Plug](https://github.com/romul/airbrake_plug).
