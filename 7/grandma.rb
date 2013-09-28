puts 'say something to grandma'
something = ''
while something != 'BYE'
	something = gets.chomp
	if something != something.upcase
		puts 'HUH? SPEAK UP, SONNY!'
	else
		random_year = 1930 + rand(21)
		puts 'NO, NOT SINCE ' + random_year.to_s + '!'
	end
end
puts 'BYE, SONNY!'