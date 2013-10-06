class Array
	def shuffle
		array = self

		shuffle_array = []

	while array.length>0
		new_array = []
		random_index = rand(array.length)
		current_index = 0

		array.each do |item|
			if current_index == random_index
				shuffle_array.push item
			else
				new_array.push item
			end	

			current_index += 1
		end

		array = new_array
		
	end

	shuffle_array
	end
end

class Integer
	def factorial
		if self <= 1 
			1
		else
    		self * (self-1).factorial
		end 
	end

	def to_roman
		value = ''

		value += 'M' * (self / 1000)
		value += 'D' * (self % 1000 / 500) 
		value += 'C' * (self % 500 / 100) 
		value += 'L' * (self % 100 / 50) 
		value += 'X' * (self % 50 / 10) 
		value += 'V' * (self % 10 / 5) 
		value += 'I' * (self % 5 / 1) 
		value
	end
end
puts [1,2,3,4,5].shuffle
puts 5.factorial
puts 27.to_roman