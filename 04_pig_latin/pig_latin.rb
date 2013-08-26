def translate(str)
	vowels = %w{ a e i o u }

	if (vowels.include?(str[0]))
		return str + "ay"
	elsif (!vowels.include?(str[0]) && !vowels.include?(str[1]))
		return str[2,str.length] + str[0,2] + "ay"
	else
		return str[1,str.length] + str[0,1] + "ay"
	end
end