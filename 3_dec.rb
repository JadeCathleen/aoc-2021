array = []

File.open('3_dec_input.txt').each do |line|
  cmd_array = line.strip.chars
  array << cmd_array
end
gamma_rate = []
epsilon_rate = []

sum_of_1_in_0 = 0
sum_of_0_in_0 = 0

i = array[0].count

x = 0
until x > i do
array.each do |binary|
  if binary[x] == '1'
    sum_of_1_in_0 += 1
  else
    sum_of_0_in_0 += 1
  end
end

if sum_of_1_in_0 > sum_of_0_in_0
  gamma_rate << '1'
  epsilon_rate << '0'
else
  gamma_rate << '0'
  epsilon_rate << '1'
end

x += 1

end

p gamma_rate.join.to_i(2) * epsilon_rate.join.to_i(2)
p epsilon_rate
