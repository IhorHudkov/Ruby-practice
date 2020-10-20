input = File.open 'task.txt', 'r'
output = File.open 'task1.txt', 'a'

while line = input.gets
	output.write line
	if line.include? 'March'
	       output.write "April,#{100}\n"
	end
end

input.close
output.close



	