# require 'yaml'
def shuffle array
	
	shuffle_array = []

	while array.length>0
		new_array = []
		random_index = rand(array.length)
		current_index = 0

		array.each do |item|
			if current_index == random_index
				shuffle_array.push item
			else
				new_array.push item
			end	

			current_index += 1
		end

		array = new_array
		
	end

	shuffle_array
end

arr = shuffle(Dir['**/*.mp3'])
playlist = 'playlist.m3u'
# song_string = arr.to_yaml

File.open playlist, 'w' do |f|
	arr.each do |e|
		f.write e + "\n"
	end
	# f.write song_string
end
