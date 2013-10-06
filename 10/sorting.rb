def sort array
	rec_sort array, []
end

def rec_sort unsorted, sorted
	if unsorted.length <=0
		return sorted
	end

	smallest = unsorted.pop
	still_unsorted = []
	unsorted.each do |current_value|
		if current_value < smallest
			still_unsorted.push smallest
			smallest = current_value
		else
			still_unsorted.push current_value
		end
	end
	sorted.push smallest
	rec_sort still_unsorted, sorted
end

puts (sort(['can', 'feel', 'singing', 'like', 'a', 'A', 'B', 'can']))
