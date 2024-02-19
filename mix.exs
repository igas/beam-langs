defmodule Langs.Mixfile do
  use Mix.Project

  def project do
    [app: :langs,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:hello_alpaca, path: "local_deps/hello_alpaca", manager: :rebar3},
      {:hello_elixir, path: "local_deps/hello_elixir"},
      {:hello_erlang, path: "local_deps/hello_erlang", manager: :rebar3},
      {:hello_lfe, path: "local_deps/hello_lfe", manager: :rebar3},
    ]
  end
end
