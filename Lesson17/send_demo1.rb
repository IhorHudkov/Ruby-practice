def say_hello
	puts 'Hello!'
end

def say_hi
	puts 'Hi!'
end

def say_bye
	puts 'Bye!'
end

def say_good_night
	puts 'Good night!'
end

answer = gets.strip
send answer
