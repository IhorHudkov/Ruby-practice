input = File.open 'passwords.txt', 'r'
new_string = ''
while line = input.gets
	#puts line
	new_string +=line if line.chomp.size == 6	#line.strip[5] && !line.strip[6]
end

input.close

puts new_string