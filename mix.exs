defmodule Extreme.Mixfile do
  use Mix.Project

  def project do
    [app: :extreme,
     version: "0.3.2",
     elixir: ">= 1.0.0 and < 1.2.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def application do
    [
      applications: [:logger, :exprotobuf, :uuid]
    ]
  end

  defp deps do
    [
      {:exprotobuf, "~> 0.10.2"},
      {:uuid, "~> 1.0" }
    ]
  end
end
