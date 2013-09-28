puts 'please enter the starting year'
start_year = gets.chomp.to_i
puts 'please enter the ending year'
end_year = gets.chomp.to_i
current_year = start_year
leap_years = ''

while current_year <= end_year
	if (current_year % 4 == 0 && current_year % 100 !=0) || (current_year % 400 == 0 && current_year % 100 ==0)
		leap_years += current_year.to_s + ' '		
	end		
	current_year += 1
end

if leap_years.to_s.length > 0
	puts 'leap year: ' + leap_years
else
	puts 'no leap year exists'
end
