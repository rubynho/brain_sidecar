defmodule SquareFarmDivision do
  @moduledoc """
  Finds the largest square a farm can be divided.

  The found area will be used to divide the entire farm.
  """

  def execute(x, y) when x > y, do: execute(x - y, y)
  def execute(x, y) when x < y, do: execute(x, y - x)
  def execute(size, size), do: size
end

SquareFarmDivision.execute(1680, 640)
|> dbg()

SquareFarmDivision.execute(252, 1200)
|> dbg()
