defmodule PaymentServer do
  use GenServer

  def init(args) do
    IO.puts("Received arguments: #{inspect(args)}")
    state = %{invoices: []}

    {:ok, state, {:continue, :fetch_data} }
  end

  def handle_call(:get_state, _form, state) do
    {:reply, state, state}
  end

  def handle_continue(:fetch_data, state) do
    invoices = FetchData.call
    updated_state = Map.put(state, :invoices, invoices)

    {:noreply, updated_state}
  end
end
