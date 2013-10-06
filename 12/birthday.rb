puts 'what year were you born?'
year = gets.chomp.to_i

puts 'what month were you born?'
date = gets.chomp.to_i

puts 'what day of the month were you born?'
day = gets.chomp.to_i

age = (Time.new - Time.local(year, date, day)) / (60*60*24*365)
index = 1

while index < age
	puts 'SPANK!'
	index += 1
end