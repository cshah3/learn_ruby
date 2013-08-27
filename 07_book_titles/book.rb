class Book

	def initialize
		@title = ""
	end

	def title=(str)
		little_words = %w{ the a an and in of the }
		phrase = str.split(" ")

		titleize_phrase = []
		phrase.each do |word|  
			word.capitalize! unless little_words.include?(word) 
		titleize_phrase << word
		end

		titleize_phrase.first.capitalize!
		@title = titleize_phrase.join(" ")
	end

	def title
		@title
	end
end