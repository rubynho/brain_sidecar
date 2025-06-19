defmodule FindMethSeller do
  @moduledoc """
  Finds the closest meth seller using a BFS algorithm.
  """

  @graph %{
    "Walter White" => ["Jesse", "Todd", "Saul Goodman", "Skyler"],
    "Jesse" => ["Jane", "Badger", "Skinny", "Saul Goodman"],
    "Saul Goodman" => ["Mike", "Tuco", "Kim Wexler", "Howard Hamlin"],
    "Mike" => ["Gustavo Fring", "Lydia", "Kim Wexler"],
    "Tuco" => ["Hector Salamanca", "Nacho Varga"],
    "Gustavo Fring" => ["Mike", "Gale", "Lydia", "Tyrus", "Juan Bolsa"]
  }

  def execute(start_person) do
    queue = Map.get(@graph, start_person, [])
    checked_people = []

    do_execute(@graph, queue, checked_people)
  end

  defp do_execute(_graph, [], _checked), do: {:error, :no_meth_seller_found}

  defp do_execute(graph, [person | queue], checked_people) do
    if not_checked?(checked_people, person) && meth_seller?(person) do
      person
    else
      new_people = Map.get(graph, person, [])
      do_execute(graph, queue ++ new_people, [person | checked_people])
    end
  end

  defp not_checked?(checked_people, person), do: !Enum.member?(checked_people, person)

  defp meth_seller?("Tuco"), do: true
  defp meth_seller?("Hector Salamanca"), do: true
  defp meth_seller?("Gustavo Fring"), do: true
  defp meth_seller?(_), do: false
end

FindMethSeller.execute("Skyler")
|> dbg()
