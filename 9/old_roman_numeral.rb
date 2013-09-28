def old_roman_numeral number
	value = ''

	value += 'M' * (number / 1000)
	value += 'D' * (number % 1000 / 500) 
	value += 'C' * (number % 500 / 100) 
	value += 'L' * (number % 100 / 50) 
	value += 'X' * (number % 50 / 10) 
	value += 'V' * (number % 10 / 5) 
	value += 'I' * (number % 5 / 1) 
	value
end

puts 'Please type in any integer between 1 and 3000'
puts old_roman_numeral gets.chomp.to_i