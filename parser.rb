array = []

File.open('2_dec_input.txt').each do |line|
  cmd_array = line.strip.split
  cmd_array[1] = cmd_array[1].to_i
  array << cmd_array
end

# p array
