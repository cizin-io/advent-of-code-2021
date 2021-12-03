require 'minitest/autorun'
require_relative "submarine"

class SubmarineTest < Minitest::Test
    COMMANDS = [
        "forward 5",
        "down 5",
        "forward 8",
        "up 3",
        "down 8",
        "forward 2",
    ]

    def test_horizontal_movement
        submarine = Submarine.new

        submarine.forward(3)

        assert_equal(3, submarine.horizontal)
    end

    def test_depth_movement
        submarine = Submarine.new

        submarine.down(2)
        submarine.up(1)

        assert_equal(1, submarine.depth)
    end

    def test_run_commands
        submarine = Submarine.new

        raw_commands_to_input(COMMANDS).each do |command, step|
            submarine.send(command, step)
        end

        assert_equal(10, submarine.depth)
        assert_equal(15, submarine.horizontal)
    end

    def test_raw_commands_to_input
        result = raw_commands_to_input(COMMANDS)

        assert_equal(6, result.length)
        result.each do |command, step|
            assert(command.is_a? String)
            assert(step.is_a? Numeric)
        end
    end
end