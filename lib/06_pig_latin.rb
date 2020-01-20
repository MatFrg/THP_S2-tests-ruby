def cas1(s) #translates a word beginning with a vowel
		return s+"ay"
end

def cas2(s) #translates a word beginning with a consonant
	return s[1..-1]+s[0]+"ay"
end

def cas3(s) #translates a word beginning with two consonants
	return s[2..-1]+s[0..1]+"ay"
end

def cas4(s) #translates two words
	return s.split[0]+"ay"+" "+ (s.split[1])[1..-1]+s.split[1][0]+"ay"
end

def cas5(s) #translates a word beginning with three consonants
	return s[3..-1]+s[0..2]+"ay"
end

def cas6(s) #"counts 'qu' as a single phoneme"
	return s[2..-1]+s[0..1]+"ay"
end

def cas7(s) #"counts 'qu' as a consonant even when it's preceded by a consonant"
	return s[3..-1]+s[0..2]+"ay"
end

def cas8(s) #"translates many words"
alpha = ('a'..'z').to_a
vowels = ["a", "e", "i", "o", "u"]
consonnant = alpha - vowels

	[s].each {|word|
	if vowels.include?(word[0])
		return cas1(word)
	elsif consonnant.include?(word[0]) && word[1..2] == "qu" 
		return cas7(word)
	elsif s[0..1] == "qu" 
		return cas6(word)
	elsif consonnant.include?(word[0]) && consonnant.include?(word[1]) && consonnant.include?(word[2])
		return cas5(word)
	elsif consonnant.include?(word[0]) && consonnant.include?(word[1])
		return cas3(word)
	elsif consonnant.include?(word[0])
		return cas2(word)
	end
	}
	return s
end


def translate(s)
alpha = ('a'..'z').to_a
vowels = ["a", "e", "i", "o", "u"]
consonnant = alpha - vowels

	if s.split.length == 2
		return cas4(s)
	elsif s.split.length > 2
		return cas8(s)
	elsif vowels.include?(s[0])
		return cas1(s)
	elsif consonnant.include?(s[0]) && s[1..2] == "qu" 
		return cas7(s)
	elsif s[0..1] == "qu" 
		return cas6(s)
	elsif consonnant.include?(s[0]) && consonnant.include?(s[1]) && consonnant.include?(s[2])
		return cas5(s)
	elsif consonnant.include?(s[0]) && consonnant.include?(s[1])
		return cas3(s)
	elsif consonnant.include?(s[0])
		return cas2(s)
	else
	end

end 

translate("the quick brown fox")

