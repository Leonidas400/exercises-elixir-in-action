defmodule Ex1 do

  def tamanhoDeLista(list) do
    length(list)
  end

  def calcular_tamanho([_head | _tail]) do
    1 + calcular_tamanho(tail)
  end

  def range(a, a) do
    IO.puts(a)
  end

  def range(a, b) do
    if a < b, do: range(a+1, b)
    if a > b, do: a-1
  end

end
