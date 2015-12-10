defmodule RollbarPlug.Mixfile do
  use Mix.Project

  def project do
    [app: :rollbar_plug,
     version: "0.1.0",
     elixir: "~> 1.1",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def application do
    [
      applications: [
        :rollbax
      ]
    ]
  end

  defp deps do
    [{:rollbax, "~> 0.5"}]
  end
end
