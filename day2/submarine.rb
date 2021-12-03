class Submarine
    def initialize
        @horizontal = 0
        @depth = 0
    end

    def forward(step)
        @horizontal += step
    end

    def up(step)
        @depth -= step
    end

    def down(step)
        @depth += step
    end

    attr_reader :horizontal, :depth
end

class SubmarineV2 < Submarine
    def initialize
        super
        @aim = 0
    end

    def forward(step)
        super
        @depth += @aim * step
    end

    def up(step)
        @aim -= step
    end

    def down(step)
        @aim += step
    end

    attr_reader :aim
end

def raw_commands_to_input(lines)
    lines.map do |line|
        command, step = line.split(" ").tap do |split_line|
            split_line[1] = split_line[1].to_i
        end
    end
end