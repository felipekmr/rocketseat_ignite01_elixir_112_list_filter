defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do

    test "returns zero for an empty list" do
      result = ListFilter.call []
      expected_result = 0

      assert expected_result == result
    end

    test "returns zero for an list with only strings" do
      result = ListFilter.call ["banana", "apple", "orange"]
      expected_result = 0

      assert expected_result == result
    end

    test "returns zero for an list without odd numbers" do
      result = ListFilter.call ["2", "banana", "4", "apple", "orange", "6"]
      expected_result = 0

      assert expected_result == result
    end

    test "returns the number of odd numbers within the strings list" do
      result = ListFilter.call ["1", "3", "6", "43", "banana", "6", "abc"]
      expected_result = 3

      assert expected_result == result
    end
  end
end
