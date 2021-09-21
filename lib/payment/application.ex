defmodule Payment.Application do
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      %{
        id: Payment.ProcessTaskSupervisor,
        start: {
          Task.Supervisor,
          :start_link,
          [[name: Payment.ProcessTaskSupervisor]]
        }
      }
    ]
    opts = [strategy: :one_for_one, name: Payment.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
