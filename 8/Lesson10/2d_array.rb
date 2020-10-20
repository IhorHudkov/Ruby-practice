# encoding: cp866

big_array = []

def add_items
	print "Enter name: "
	name = gets.strip.capitalize
	
        if name == "" 
		return
	end

	print "Enter age: "
	age = gets.to_i

	if age == ""
		return
	end	

	arr = []
	arr << name << age
	arr	
end

def display_items  collection
	x = 0
	puts "Список студентов:"
	collection.each do |item|
		x = x + 1
		puts "  #{x}. #{item[0]},\t#{item[1]}"
	end	
end

def remove_items  collection
	print "Кого желаете удалить из списка?(порядковый номер): "
	number = gets.to_i
	collection.delete_at number - 1
	collection
end

loop do
	person_info = add_items
	
	if person_info 
     		big_array << person_info
	else
		display_items big_array
		remove_items big_array
		display_items big_array
		break	
	end 


end

	
