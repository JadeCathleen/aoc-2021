array = []

File.open('2_dec_input.txt').each do |line|
  cmd_array = line.strip.split
  cmd_array[1] = cmd_array[1].to_i
  array << cmd_array
end

# horizontal position
horizontal_position = 0
depth = 0
aim = 0
array.each do |subarray|
  case subarray[0]
  when 'down'
    aim += subarray[1]
    # p subarray
    # p aim
  when 'up'
    aim = aim - subarray[1]
    # p subarray
    # p aim
    # p subarray
    # p horizontal_position
    # p depth
  when 'forward'
    # p subarray
    # p aim
    # p depth
    horizontal_position += subarray[1]
    depth += subarray[1]*aim
  end
end

p horizontal_position * depth
# p horizontal_position

# depth position

# array.each do |subarray|
#   if subarray[0] == 'down'
#     depth += subarray[1]
#   elsif subarray[0] == 'up'
#     depth = depth - subarray[1]
#   end
# end
