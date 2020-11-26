defmodule ConfexConsul.MixProject do
  use Mix.Project

  def project do
    [
      app: :confex_consul,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps()
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
      {:confex, "~> 3.5"},
      {:tesla, "~> 1.4"},
      {:hackney, "~> 1.16"},
      {:jason, ">= 1.0.0"}
    ]
  end
end
