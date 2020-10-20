phone_book = {}


while true
	
	print 'Enter name(Enter to stop): '
	name = gets.strip.capitalize
	
	if name == ''
		break
	end

	print 'Enter number: '
	number = gets.strip

	phone_book[name] = number

end

phone_book.each do |key,value|
	puts "Name: #{key}, phone: #{value}"
	end

