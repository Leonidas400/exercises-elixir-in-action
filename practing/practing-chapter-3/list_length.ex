defmodule ListLength do
   def tamanho_lista(lista) do
      valorDaLista = Enum.count(lista)
      IO.puts("esta lista tem: #{valorDaLista} elementos")
   end
end
