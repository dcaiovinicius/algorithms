require 'minitest/autorun'
require 'algorithms'

class TestInsertionSort < Minitest::Test
  def setup
    @array = Array.new(200) { rand(200) }
    @sorted_array = @array.sort
  end

  def test_algorithm_insertion_sort
    assert_equal Algorithms::Sort.insertion(@array), @sorted_array
  end

  def test_should_return_empty_array
    assert_equal Algorithms::Sort.insertion, []
  end
end
