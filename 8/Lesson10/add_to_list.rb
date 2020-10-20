# encoding: cp866

arr = []

loop do
	print "Кого добавить в список? "
	name = gets.strip.capitalize
	
	if name == ""
		exit
	end
	
	arr << name
	x = 1
	arr.each do |name|
		puts "#{x}.#{name}"
		x = x + 1	
	end
	
end