defmodule Quicksort do
  @moduledoc """
  Sorts a list of items.

  Efficiency: O(n log n)
  """

  def execute([]), do: []

  def execute(list) do
    index = div(Enum.count(list), 2)
    {pivot, list} = List.pop_at(list, index)
    smalls = Enum.filter(list, fn item -> item <= pivot end)
    larges = Enum.filter(list, fn item -> item > pivot end)

    execute(smalls) ++ [pivot] ++ execute(larges)
  end
end

[3, 1, 2, 4, 0]
|> Quicksort.execute()
|> dbg
