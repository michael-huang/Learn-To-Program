$depth = 0
def log description, &block
puts "	"*$depth + "Begining: #{description}..."
$depth += 1
result = block.call
$depth -= 1
puts "	"*$depth + "... #{description} finished, returning #{result}"
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
