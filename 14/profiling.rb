def profile block_description, &block
	is_profileing_on = false
	if is_profileing_on
		start_time = Time.new
		block.call
		duration = Time.new - start_time
		puts "#{block_description}: #{duration} seconds"
	else
		block.call
	end
end