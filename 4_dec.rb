
boards = []

picked_numbers = File.open('4_dec.txt').first.strip.split(',').map { |n| n.to_i }

File.open('4_dec.txt').each do |line|
  unless line == File.open('4_dec.txt').first
    until line == ""
      p line
      board = []
      board << line.strip.split.map { |n| n.to_i }
    end
    boards << board
  end
end

p boards
