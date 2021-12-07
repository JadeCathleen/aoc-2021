array = []

File.open('1_dec_input_1.txt').each do |line|
  array << line.strip.to_i
end

sum = 0
array.each_with_index do |depth, index|
  if !array[index - 1 ].nil? && array[index - 1] < depth
      sum += 1
  end
end

puts sum

tri_add = 0
array.each_with_index do |depth, index|
  if !array[index - 1].nil? && !array[index+1].nil? && !array[index+2].nil?
    if array[index - 1] + depth + array[index + 1] < depth + array[index +1] + array[index+2]
      tri_add += 1
    end
  end
end

puts tri_add
