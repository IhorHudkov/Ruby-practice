arr = %w[vasa sveta masha petya kolya]
x = 0

arr.each do |name|
	puts  "#{x} - #{name.capitalize}"
	x = x + 1
end