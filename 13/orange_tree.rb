class OrangeTree

	def initialize
		@height = 0
		@orange_count = 0
		@alive = true
		@age = 0
		puts 'initialize done!'
	end
	def height
		if @alive
			puts "the height of tree is #{@height}"
		else
			dead
		end
	end

	def one_year_passes
		@orange_count = 0
		if @age >= 30 && rand(5)==0
			@alive = false
			dead
		else
			@age += 1
			@height += 1+rand(5)

			if @age >= 10
				@orange_count += rand(50)
			end
		end
		

		puts 'one year passes~'
	end

	def count_the_oranges
		if @alive
			puts "the count of oranges is #{@orange_count}"
		else
			dead
			puts 'tree is dead, the count of oranges is 0'
		end
	end

	def pick_an_orange
		if @alive
			if @orange_count <= 0
				puts 'there is no any orange'
			else
				puts 'what a delicious orange!'
				@orange_count = @orange_count - 1
			end
		else
			dead
			puts 'pick an orange? the tree is dead, no more oranges'
		end
	end

	def dead
		puts 'tree is dead...'
	end
end

tree = OrangeTree.new 
tree.height
tree.one_year_passes
tree.count_the_oranges
tree.pick_an_orange
30.times  do
	tree.one_year_passes
end
tree.height
tree.count_the_oranges
tree.pick_an_orange


