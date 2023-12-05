INPUT = File.open('Day2/inputday2.txt').read


def check(line)
  puzzle = { red: 12, green: 13, blue: 14 }
  id = line.split(":").first.split.last.to_i
  line.split(": ").last.split("; ").each do |group|
    group.split(", ").each do |cube|
      quantity, colour = cube.split
      return 0 if quantity.to_i > puzzle[colour.to_sym]
    end
  end
  id
end


p INPUT.split("\n").map { |line| check(line) }.sum
