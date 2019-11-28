defmodule DemoDarwin.MixProject do
  use Mix.Project

  def project do
    [
      app: :demo_darwin,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      test: [
        max_failures: 1
      ],
      darwin: [
        modules: [
          {Enom, []}
        ]
      ]
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
      {:darwin, path: "../darwin", only: [:dev, :test]}
    ]
  end
end
