def new_roman_numeral number
	value = ''
	thousands = number / 1000
	hundreds = number % 1000 / 100
	tens = number % 100 / 10
	ones = number % 10 / 1

	value = 'M' * thousands
	if hundreds == 9 
		value += 'CM'
	elsif hundreds == 4
		value += 'CD'
	else
		value += 'D' * (number % 1000 / 500) 
		value += 'C' * (number % 500 / 100)
	end

	if tens == 9 
		value += 'XC'
	elsif tens == 4
		value += 'XL'
	else
		value += 'L' * (number % 100 / 50) 
		value += 'X' * (number % 50 / 10)
	end

	if ones == 9 
		value += 'IX'
	elsif ones == 4
		value += 'IV'
	else
		value += 'I' * (number % 5 / 1)
	end

	value
end

puts 'Please type in any integer between 1 and 3000'
puts new_roman_numeral gets.chomp.to_i