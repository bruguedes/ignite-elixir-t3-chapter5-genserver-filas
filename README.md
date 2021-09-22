# ignite-elixir-t3-chapter5-genserver-filas-
Desafio: GenServer - Ignite Trilha Elixir - Turma 03 - Chapter V


# 💻 Sobre o desafio

Aplicação em Elixir, onde teremos um módulo que implementa a estrutura de dados Fila utilizando Genservers.

Uma estrutura de fila na programação é equivalente à uma fila no mundo real, onde o primeiro elemento inserido em uma lista é também o primeiro a ser removido. 
Mais detalhes sobre esse tipo de estrutura [aqui](https://www.cos.ufrj.br/~rfarias/cos121/filas.html#:~:text=Filas%20%2D%20Queue,e%20remove%2Dse%20do%20in%C3%ADcio).

A fila deve ser criada em um módulo chamado Queue, respeitando o seguinte contrato:

```bash
# iniciar a fila com uma lista contendo três valores [1, 2, 3]
iex> {:ok, pid} = Queue.start_link([1,2,3])
{:ok, #PID<0.146.0>}

# Acrescenta ao inicio da fila um novo elemento
iex> Queue.enqueue(pid, 4)
:ok

# Remove o primeiro elemeto da lista
iex> Queue.dequeue(pid)
4
```

Para a função `enqueue/2`, utilize em seu callback uma função `handle_cast/2` e para `dequeue/1` uma do tipo `handle_call/3`.
Em caso de qualquer dúvida, você pode conferir a documentação oficial do GenServer: [https://hexdocs.pm/elixir/GenServer.html](https://hexdocs.pm/elixir/GenServer.html).

No exemplo acima, a função `Queue.start_link` é chamada para iniciar a fila com uma lista contendo três valores `[1, 2, 3]`. Após isso, é chamada a função `Queue.enqueue` com o pid e um novo valor (4) a ser acrescentado na fila e ao chamar a função `Queue.dequeue` com o pid, é removido o primeiro valor da fila que era o `4`.



## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `genserver_filas` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:genserver_filas, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/genserver_filas](https://hexdocs.pm/genserver_filas).

