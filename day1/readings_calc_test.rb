require 'minitest/autorun'
require_relative "readings_calc"

class ReadingsClacTest < Minitest::Test
  TEST_INPUT = [
    199,
    200,
    208,
    210,
    200,
    207,
    240,
    269,
    260,
    263,
  ]

  def test_count_readings_that_increase
    result = count_readings_that_increase(readings: TEST_INPUT)

    assert_equal(7, result)
  end

  def test_sum_readings_by_window
    result = sum_readings_by_window(readings: TEST_INPUT, window_size: 3)

    assert_equal(8, result.length)
  end
end
