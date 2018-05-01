defmodule Lists do
  @moduledoc """
  Documentation for a set of recursive functions tried around a List.
  """

  @doc """
  Calculate length of a list by recursion

  ## Examples

      iex> Lists.len([])
      0

      iex> Lists.len([4, 3, 2, 5])
      4
  """

  def len([]), do: 0
  def len([h | t]), do: 1 + len(t)
end