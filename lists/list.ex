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
  def len([_h | t]), do: 1 + len(t)

  @doc """
  Add the ability to calculate the double of each element in a list

  ## Examples

    iex> Lists.double([])
    []

    iex> Lists.double([5, 3])
    [10, 6]

  """
  def double([]), do: []
  def double([h|t]), do: [ 2 * h | double(t)]
end