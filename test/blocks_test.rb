require 'minitest/autorun'

# read http://www.reactive.io/tips/2008/12/21/understanding-ruby-blocks-procs-and-lambdas/
class BlocksTest < Minitest::Test

  def test_even_map
    input = [11, -2, 32, 14, -5, 26]
    expected = [22, 64, -10]

    assert_equal(expected, input.even_map { |item| item * 2 })
  end

  def test_even_reduce
    input = [11, -2, 32, 14, -5, 26]
    expected = 38

    assert_equal(expected, input.even_reduce(0) { |acc, item| acc + item })
  end

  def test_even_reduce
    input = [11, -2, 32, 14, -5, 26]
    expected = 38

    assert_equal(expected, input.even_reduce_arg(0, lambda { |acc, item| acc + item }))
  end

  def test_map_with_siblings
    input = [1, 2, 3]
    expected = [[nil, 1, 2], [1, 2, 3], [2, 3, nil]]

    assert_equal(expected, input.map_with_siblings { |prev, current, nextt| [prev, current, nextt] })
  end
end

class Array

  # Map only elements with even indexes
  # Method accepts only blocks
  # @yield [item] Gives array element to block
  # @return [Array]
  def even_map
    raise 'Implement me'
  end

  # Reduce only elements with even indexes
  # Method accepts only blocks
  # @yield [item] Gives array element to block
  # @return [Fixnum]
  def even_reduce(acc)
    raise 'Implement me'
  end

  # Reduce only elements with even indexes
  # Method accepts lambdas and Procs
  # @param [lambda]
  # @return [Fixnum]
  def even_reduce_arg(acc, func)
    raise 'Implement me'
  end

  # Map elements
  # Method accepts only blocks
  # @yield [prev, current, nexts] Gives current and sibling elements to block
  # @return [Fixnum]
  def map_with_siblings
    raise 'Implement me'
  end
end

