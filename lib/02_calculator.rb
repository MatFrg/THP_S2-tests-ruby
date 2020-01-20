def add(a,b)
	c = a + b
	return c
end

def subtract(a,b)
	c = a - b
	return c
end

def sum(a)
	return a.sum
end

def multiply(a,b)
	return c = a * b
end

def power(a,b)
	if b == 0
		return 1
		else 
			p = 1
		for i in 1..b
			p = p * a
		end	
	end
	return p
end 

def factorial(a)
	fact = 1
	i = 1
	while (i<=a)
		fact = fact * i 
		i+=1
	end
	return fact
end

