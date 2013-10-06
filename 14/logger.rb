def log description, &block
puts "Begining: #{description}..."
puts "... #{description} finished, returning #{block.call}"
end

log 'outer block' do
	log 'some little block' do
		"little"
	end

	log 'yet another block' do
		"another"
	end

	"outer"
end
