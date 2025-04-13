defmodule BinarySearch do
  @moduledoc """
  Searches for an item in an ordered list.

  Efficiency: O(log n)

  Timing the execute function on my machine
  list: 4 billion items
  finding: 37
  ```
  $ time elixir binary_search.exs
  elixir binary_search.exs  0,71s user 0,21s system 418% cpu 0,220 total
  ```

  Timing the Enum.find/2 function on my machine
  list: 4 billion items
  finding: 2_000_000_000 (2 billion)
  ```
  $ time elixir binary_search.exs
  elixir binary_search.exs  26,54s user 0,19s system 102% cpu 26,030 total
  ```
  """

  def execute(list, item) do
    start = 0
    final = Enum.count(list) - 1

    Enum.reduce_while(start..final, {start, final, 1}, fn _, {start, final, step} ->
      half = div(start + final, 2)
      current_item = Enum.at(list, half)

      cond do
        start > final ->
          IO.puts("Steps: #{step}")
          {:halt, nil}

        item == current_item ->
          IO.puts("Steps: #{step}")
          {:halt, current_item}

        item > current_item ->
          {:cont, {half + 1, final, step + 1}}

        item < current_item ->
          {:cont, {start, half - 1, step + 1}}
      end
    end)
  end
end

## Examples

# 1..100
# |> BinarySearch.execute(36)
# |> dbg

# 1..4_000_000_000
# |> BinarySearch.execute(37)
# |> dbg

# 1..16_000_000_000
# |> BinarySearch.execute(37)
# |> dbg

# ~w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
# |> BinarySearch.execute("b")
# |> dbg

# 1..4_000_000_000
# |> Enum.find(fn x -> x == 2_000_000_000 end)
# |> dbg
