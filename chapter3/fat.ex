defmodule fat do
  def fatorial (0), do: 1
  def fatorial (n), do: n * fatorial(n -1)
end
