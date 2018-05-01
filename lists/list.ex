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
  Calculate the sum of a list by recursion

  ## Examples

      iex> Lists.sum([])
      0

      iex> Lists.sum([4, 3, 2, 5])
      14
  """

  def sum([]), do: 0
  def sum([h | t]), do: h + sum(t)

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

    iex> Lists.sum_pairs([5, 3, 8]) # the result is false for a list with odd number of elements
    false
  """
  def sum_pairs([]), do: []
  def sum_pairs([h | t]) when length([h | t]) |> Integer.is_odd == true, do: false
  def sum_pairs([h1, h2 | t]), do: [h1 + h2 | sum_pairs(t)]

  @doc """
  Add the ability to calculate the result based on the logic with regard to a passed in function.
  This allows one to use the map function with any transformation function passed with regard to it.

  ## Examples

    iex> Lists.map([1, 2, 3], fn x -> 2*x end)
    [2, 4, 6]

    iex> Lists.map([1, 2, 3], fn x -> 2*x*x end)
    [2, 8, 18]

    iex> Lists.map([1, 2, 3], &(2*&1*&1))
    [2, 8, 18]
  """
  def map([], _func), do: []
  def map([h | t], func) do
    [ func.(h) | map(t, func) ]
  end
end