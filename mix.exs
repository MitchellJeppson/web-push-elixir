defmodule WebPushElixir.MixProject do
  use Mix.Project

  def project do
    [
      app: :web_push_elixir,
      version: "0.4.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: "Simple web push for Elixir",
      package: [
        licenses: ["MIT"],
        links: %{"GitHub" => "https://github.com/midarrlabs/web-push-elixir"}
      ],
      test_coverage: [tool: ExCoveralls]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {WebPushElixir.Application, []},
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:confex, "~> 3.5.1"},
      {:ex_doc, "~> 0.27", only: :dev, runtime: false},
      {:excoveralls, "~> 0.10", only: :test},
      {:jason, "~> 1.4"},
      {:jose, "~> 1.11"},
      {:plug, "~> 1.14"},
      {:plug_cowboy, "~> 2.0"},
      {:req, "~> 0.5.0"}
    ]
  end
end
