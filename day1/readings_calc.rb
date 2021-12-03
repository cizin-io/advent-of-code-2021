def count_readings_that_increase(readings: [], window_size: 2, &block)
    reading_pairs = readings.each_cons(window_size) 

    reading_pairs.select do |a, b|
        b > a
    end.count
end

def sum_readings_by_window(readings: [], window_size: 2)
    readings.each_cons(window_size).map do |reading_window|
        reading_window.sum
    end
end