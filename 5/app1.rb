# encoding: cp866

puts "Вы довольны своей зарплатой? (Y/N) "
answer =  gets.strip.upcase

if answer == "Y"
	puts "Очень хорошо"
end

if answer == "N"
	puts "Очень плохо"
end

