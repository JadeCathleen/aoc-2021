array = []

File.open('3_dec_input.txt').each do |line|
  cmd_array = line.strip.chars
  array << cmd_array
end
gamma_rate = []
epsilon_rate = []

sum_of_1_in_x = 0
sum_of_0_in_x = 0

i = array[0].count

x = 0
until x > (i - 1) do
  array.each do |binary|
    if binary[x] == '1'
      sum_of_1_in_x += 1
    else
      sum_of_0_in_x += 1
    end
  end

  if sum_of_1_in_x > sum_of_0_in_x
    gamma_rate << '1'
    epsilon_rate << '0'
  else
    gamma_rate << '0'
    epsilon_rate << '1'
  end

  x += 1
  sum_of_0_in_x = 0
  sum_of_1_in_x = 0
end


# p gamma_rate
# p epsilon_rate
# p gamma_rate.join
# p epsilon_rate.join
# p gamma_rate.join.to_i(2)
# p epsilon_rate.join.to_i(2)
# p gamma_rate.join.to_i(2) * epsilon_rate.join.to_i(2)
x = 0

def most_common_bit(array, position)
  sum_of_1 = 0
  sum_of_0 = 0
  array.each do |binary|
    if binary[position] == '1'
      sum_of_1 += 1
    else
      sum_of_0 += 1
    end
  end
  sum_of_1 >= sum_of_0 ? '1' : '0'
end

def least_common_bit(array, position)
  sum_of_1 = 0
  sum_of_0 = 0
  array.each do |binary|
    if binary[position] == '1'
      sum_of_1 += 1
    else
      sum_of_0 += 1
    end
  end
  sum_of_1 >= sum_of_0 ? '0' : '1'
end

def oxigen_rating_selector(array)
  x = 0
  i = array[0].count
  until x == i
    oxigen_rating = array.select { |binary| binary[x] == most_common_bit(array, x) }
    array = oxigen_rating
    if array.count == 1
      x = i
    else
      x += 1
    end
  end
  oxigen_rating[0]
end

def co2_rating_selector(array)
  x = 0
  i = array[0].count
  until x == i
    co2_rating = array.select { |binary| binary[x] == least_common_bit(array, x) }
    array = co2_rating
    if array.count == 1
      x = i
    else
      x += 1
    end
  end
  co2_rating[0]
end

p oxigen_rating_selector(array)
p co2_rating_selector(array)

p oxigen_rating_selector(array).join.to_i(2) * co2_rating_selector(array).join.to_i(2)
