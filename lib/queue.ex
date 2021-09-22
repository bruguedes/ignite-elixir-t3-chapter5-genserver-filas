defmodule Queue do
  use GenServer

  ############### ----GENSERVER----#############
  @impl true
  def init(state) when is_list(state) do
    {:ok, state}
  end

  @impl true
  def handle_cast({:push, element}, state) do
    {:noreply, [element | state]}
  end

  @impl true
  def handle_call(:pop, _from, [head | tail]) do
    {:reply, head, tail}
  end

  @impl true
  def handle_call(:po, _from, []) do
    {:reply, "Não exitem mais elementos na fila", []}
  end
end
