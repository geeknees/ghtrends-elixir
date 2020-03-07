defmodule Ghtrends.MixProject do
  use Mix.Project

  def project do
    [
      app: :ghtrends,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      escript: escript_config()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpoison, "~> 1.6"},
      {:poison, "~> 3.1"}
    ]
  end

  def escript_config do
    [ main_module: Ghtrends ]
  end
end
