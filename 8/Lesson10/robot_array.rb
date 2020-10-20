# encoding: cp866

def get_commands
	action = [:left, :right, :up, :down]
	x = rand(0..3)
	return action[x]
end

command = get_commands

puts "Получена команда #{command}"

if command == :left
	puts "Робот едет влево"
end

if command == :right
	puts "Робот едет вправо"
end

if command == :up
	puts "Робот едет вверх"
end

if command == :down
	puts "Робот едет вниз"
end