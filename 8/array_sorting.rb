array = []
puts 'Please type in any word you want'
while true
	word = gets.chomp
	if word == ''
		break
	end
	array.push word
end
puts 'the sorted words: '
puts array.sort
