def clock &block
	hour = (Time.new.hour+11)%12+1
	hour.times do
		block.call
	end
end

clock do
	puts 'DONG!'
end