defmodule Queue do
  use GenServer

  ############### ----GENSERVER----#############
  @impl true
  def init(state) do
    {:ok, state}
  end

  @impl true
  def handle_cast({:enqueue, element}, state) do
    {:noreply, [element | state]}
  end

  @impl true
  def handle_call(:dequeue, _from, [head | tail]) do
    {:reply, head, tail}
  end

  @impl true
  def handle_call(:dequeue, _from, []) do
    {:reply, "Não exitem mais elementos na fila", []}
  end
end
