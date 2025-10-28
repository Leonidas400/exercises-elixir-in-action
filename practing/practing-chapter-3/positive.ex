defmodule Positive do
  def only_positive_numbers(list) do
    for n <- list, n > 0, do: n
  end
end
