def english_number number
	if number < 0
		return 'Please enter a number that isn\'t negative'
	end
	if number == 0
		return 'zero'
	end

	num_string = ''
	ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
	tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
	teengagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventy', 'eighteen', 'nineteen']
	zillions = [['hundred', 2], ['thousand', 3], ['million', 6], ['billion', 9], ['trillion', 12], ['quadrillion', 15]]

	left = number

	while zillions.length > 0
		pair = zillions.pop
		name = pair[0]
		base = 10 ** pair[1]

		write = left/base
		left = left - write * base

		if write > 0
			prefix = english_number write
			num_string += prefix + ' ' + name

			if left > 0
				num_string += ' '
			end
		end
	end

	write = left/10
	left = left - write*10

	if write > 0
		if write == 1 && left > 0
			num_string += teengagers[left-1]
			left = 0
		else
			num_string += tens_place[write-1]
		end

		if left > 0
			num_string += '-'
			
		end
	end

	write = left
	left = 0

	if write > 0
		num_string += ones_place[write-1]
	end

	num_string
end

number = 5
while number > 2
	puts english_number(number).capitalize + ' bottles of beer on the wall, ' + english_number(number) + ' bottles of beer!'
	number -= 1
	puts 'Take one down, pass it around, ' + english_number(number) + ' bottles of beer on the wall!'
end

puts "Two bottles of beer on the wall, two bottles of beer!"
puts "Take one down, pass it around, one bottle of beer on the wall!"
puts "One bottle of beer on the wall, one bottle of beer!"
puts "Take one down, pass it around, no more bottles of beer on the wall!"