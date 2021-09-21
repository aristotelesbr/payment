defmodule PaymentServer do
  use GenServer

  def init(args) do
    IO.puts("Received arguments: #{inspect(args)}")

    {:ok, args}
  end
end
