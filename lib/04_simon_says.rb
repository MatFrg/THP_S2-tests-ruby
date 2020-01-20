def echo(a)
	return a
end

def shout(a)
	return a.upcase
end

def repeat(a, b = 2)
	return ([a]*b).join(' ')
end

def start_of_word(a, b = 1)
	a.itself[0,b]
end

def first_word(a)
	return a.split.first
end

def titleize(a)
	#return a.split.map(&:capitalize).join(' ')
	[a].each do |word|
		 if word == "the" || word == "and" || word == "over"
		 	word.downcase
		 else
			word.capitalize!
		end
	end
end

