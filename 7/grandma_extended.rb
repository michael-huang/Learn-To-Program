puts 'say something to grandma'
something = ''
bye_count = 0
while true
	something = gets.chomp
	if something == 'BYE'
		bye_count+=1

		if bye_count>=3
			break
		end
	end

	if something != something.upcase
		puts 'HUH? SPEAK UP, SONNY!'
	else
		random_year = 1930 + rand(21)
		puts 'NO, NOT SINCE ' + random_year.to_s + '!'
	end
end
puts 'BYE, SONNY!'