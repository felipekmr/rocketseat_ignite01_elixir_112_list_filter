defmodule ListFilter do
  @moduledoc """
  Count the odd numbers from a list of strings.
  """

  require Integer

  @doc """
  Count the odd numbers from a list of strings.

  ## Examples

      iex> ListFilter.call(["1", "3", "6", "43", "banana", "6", "abc"])
      3

  """
  def call(list), do: Enum.count(list, fn element ->
    case Integer.parse(element) do
      {int, _rest}  -> Integer.is_odd(int)
      :error        -> false
    end
  end)
end
