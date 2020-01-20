def who_is_bigger(a, b, c)
	if a == nil or b == nil or c == nil
		return "nil detected"
	elsif a >= b and a >= c
		return "a is bigger"
	elsif b >=a and b >= c
		return "b is bigger"
	elsif c >= a and c >= b
		return "c is bigger"
	end
end

def reverse_upcase_noLTA(a)
	return a.upcase.reverse.gsub(/[lta]/i,'').to_s
end
		
def array_42(a)
	a.include?(42)
end

def magic_array(a)
	a.flatten.sort.map{|x| x*2}.delete_if{|x| (x%3)==0}.uniq.sort
end
