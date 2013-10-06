def roman_to_integer roman
	roman_hash = {'i' => 1,
				  'v' => 5,
				  'x' => 10,
				  'l' => 50,
				  'c' => 100,
				  'd' => 500,
				  'm' => 1000}

	index = roman_hash.length - 1
	total = 0
	prev = 0

	while index >= 0
		elment = roman[index].downcase
		value = roman_hash[elment]
		index -= 1

		if value == nil
			puts 'Not valid roman!'
			exit
		else
			if value < prev
				value = value * -1
			else
				prev = value
			end
			total += value
		end
	end
	total
end

puts (roman_to_integer('mcmxcix'))
puts (roman_to_integer('mcmkcix'))