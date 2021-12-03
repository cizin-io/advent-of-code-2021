require_relative "readings_calc"

# Part 1
readings = File.readlines("input.txt").map(&:to_i)

puts count_readings_that_increase(readings: readings)

summed_readings = sum_readings_by_window(readings: readings, window_size: 3)
puts count_readings_that_increase(readings: summed_readings)