defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do

    @parameters [
      {0, 0, []},
      {1, 0, ["banana", "apple", "orange"]},
      {2, 0, ["2", "banana", "4", "apple", "orange", "6"]},
      {3, 3, ["1", "3", "6", "43", "banana", "6", "abc"]},
    ]

    for {index, expected, input} <- @parameters do
      test "count the odd numbers within a strings list (index=#{index})" do
        result = ListFilter.call unquote(input)
        expected_result = unquote(expected)

        assert result == expected_result
      end
    end
  end
end
