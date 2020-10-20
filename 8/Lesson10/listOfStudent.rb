# encoding: cp866

arr = [ "hank","walt","jr","jessie","lidia"]
x = 1

arr.each do |name|
	puts "#{x} - #{name.capitalize!}"
	x = x + 1
end 

print "Кого хотите удалить? "
answer = gets.to_i

arr.delete_at(answer - 1)
puts arr


