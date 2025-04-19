defmodule RecursiveSum do
  @moduledoc """
  Sum all numbers of a list using recursion.

  The function call itself until it reaches the base case, for example an empty
  list or an one item list. On each execution the current call state in stored
  a call stack, when it reaches the base case the call stack reduces until the
  first call.

  A stack is a data structure that works in a LIFO way (Last In First Out).
  """

  def execute([]), do: 0
  def execute([num]), do: num
  def execute([num | tail]), do: num + execute(tail)
end

[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
|> RecursiveSum.execute()
|> dbg
