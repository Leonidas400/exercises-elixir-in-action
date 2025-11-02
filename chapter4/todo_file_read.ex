defmodule CsvImport do

  alias TodoList.add_entry()

  def lines_lengths!(path) do
    path
    |> File.read!()
    |> String.split("\n", trim: true)
    |> add_entry()
  end

end
