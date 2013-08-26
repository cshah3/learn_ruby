LITTLE_WORDS = %w{ a and the over }

def echo(str)
	str
end

def shout(str)
	str.upcase
end

def repeat(str, num = 2)
	result = (str + " ") * num
	return result.chomp(' ')
end

def start_of_word(str, num)
	str[0,num]
end

def first_word(str)
	str.split(" ").first
end

def titleize(str)
	phrase = str.split(" ")

	titleize_phrase = []
	phrase.each do |word|  
		word.capitalize! unless LITTLE_WORDS.include?(word) 
		titleize_phrase << word
	end

	titleize_phrase.first.capitalize!
	titleize_phrase.join(" ")
end