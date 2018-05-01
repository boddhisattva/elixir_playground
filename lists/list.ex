defmodule Lists do
  require Integer

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

  @doc """
  Add the ability to calculate the square of each element in a list

  ## Examples

    iex> Lists.square([])
    []

    iex> Lists.square([5, 3])
    [25, 9]

  """
  def square([]), do: []
  def square([h|t]), do: [ h * h | square(t)]

  @doc """
  Add the ability to calculate the sum of pairs of elements in a list

  ## Examples

    iex> Lists.sum_pairs([])
    []

    iex> Lists.sum_pairs([5, 3, 8, 9])
    [8, 17]

    iex> Lists.sum_pairs([5, 3, 8])
    false
  """
  def sum_pairs([]), do: []
  def sum_pairs([h | t]) when length([h | t]) |> Integer.is_odd == true, do: false
  def sum_pairs([h1, h2 | t]), do: [h1 + h2 | sum_pairs(t)]
end