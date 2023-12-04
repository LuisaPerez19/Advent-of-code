# iterate over each line
# join just the integers - first and last from that line
# sum all calibration values

FILE_PATH = File.join(File.dirname(__FILE__), 'input.txt')
INPUT = File.read(FILE_PATH)

def calibration_document
  numbers = INPUT.split("\n").map do |line|
    first_digit = line.scan(/\d/).first
    last_digit = line.scan(/\d/).last
    calibration_value = (first_digit + last_digit).to_i
  end

  numbers.sum
end

puts "Part 1 solution: #{calibration_document}"

# Alternative answer

# def calibration_document
#   numbers = INPUT.split("\n").map do |line|
#     scan = line.scan(/\d/)

#     (scan[0] + scan[-1]).to_i
#   end

#   numbers.sum
# end

# puts "Part 1 solution: #{calibration_document}"



# Part 2 ________________________________________________
