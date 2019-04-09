# Adds some basic features, reduces complexity.

# Take user input as index
def input_index
  gets.to_i - 1
end

# Thousand seperator
def seperate_with_commas(number)
  index = 3
  text = number.to_s.reverse

  (number.to_s.length / 3).times do
    text.insert(index, '.')
    index += 4
  end
  text = text.chomp('.') if (number.to_s.length % 3).zero?
  text.reverse
end

# Clears the terminal
def clear
  Gem.win_platform? ? (system 'cls') : (system 'clear')
end
