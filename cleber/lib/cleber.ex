defmodule Cleber do
  use Application

  def start(_type, _args) do
    children = [
      Database.Repo
    ]

    opts = [strategy: :one_for_one, name: Cleber.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
