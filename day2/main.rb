require_relative "submarine"

# Part 1

raw_commands = File.readlines("./input.txt")
submarine_1 = Submarine.new
raw_commands_to_input(raw_commands).each do |command, step|
    submarine_1.send(command, step)
end

puts submarine_1.horizontal * submarine_1.depth

submarine_2 = SubmarineV2.new
raw_commands_to_input(raw_commands).each do |command, step|
    submarine_2.send(command, step)
end

puts submarine_2.horizontal * submarine_2.depth