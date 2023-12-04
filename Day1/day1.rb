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

# 1.create a hash which will assing the letters key to a digit value
# access that hash value in each line and the digit using regex
#2. iterate over each line to obtain those values

LETTER_TO_DIGIT = {
  "one" => '1',
  "two" => '2',
  "three" => '3',
  "four" => '4',
  "five" => '5',
  "six" => '6',
  "seven" => '7',
  "eight" => '8',
  "nine" => '9'
}

def refined_calibration_document

  refined_calibration = INPUT.split("\n").map { |line|
  # using a positive lookahead since some words can overlap, for example twone is both two and one
  matches = line.scan(/(?=(\d|one|two|three|four|five|six|seven|eight|nine))/).flatten

  first_digit = (LETTER_TO_DIGIT[matches.first] || matches.first)

  last_digit = (LETTER_TO_DIGIT[matches.last] || matches.last)
  calibration_number = (first_digit + last_digit).to_i
  }

  refined_calibration.sum

end

puts "Part 2 solution: #{refined_calibration_document}"
