defmodule SelectionSort do
  @moduledoc """
  Sorts a list by finding the smallest item and putting it in another list.

  Efficiency: O(n²)
  """

  def execute(list) do
    list
    |> Enum.reduce({list, []}, fn _, {list, new_list} ->
      index = find_smallest(list)
      item = Enum.at(list, index)
      list = List.delete_at(list, index)

      {list, [item | new_list]}
    end)
    |> then(fn {_, new_list} -> new_list end)
    |> Enum.reverse()
  end

  defp find_smallest([smallest | _] = list) do
    1..Enum.count(list)
    |> Enum.reduce({0, smallest}, fn index, {smallest_index, smallest} ->
      item = Enum.at(list, index)

      if item < smallest, do: {index, item}, else: {smallest_index, smallest}
    end)
    |> then(fn {smallest_index, _} -> smallest_index end)
  end
end

[3, 1, 2, 4, 0]
|> SelectionSort.execute()
|> dbg()
