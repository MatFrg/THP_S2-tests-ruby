def hello
return "Hello!"#, quel est ton nom?"
#name = gets.chomp
#return name
end



def greet(name)
	# puts "Quel est ton nom?"
	# name = gets.chomp
	return "Hello, #{name}!"
end



def perform
	hello
	puts "Quel est ton nom?"
	name = gets.chomp
	greet(name)
end

perform
