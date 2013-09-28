puts 'Table of Contents'.center(50)
chapters = [['Getting Started', 1], ['Numbers', 9], ['Letters', 13]]
chapter_index = 1

chapters.each do |chapter|
	name = chapter[0]
	page = chapter[1]
	puts ('Chapter ' + chapter_index.to_s + ': ' + chapter[0]).ljust(30) + ('page ' + chapter[1].to_s).rjust(20)
	chapter_index += 1
end