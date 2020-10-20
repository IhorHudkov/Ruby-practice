# encoding: cp866

num = rand(0..100)

puts "Я загадал число от 0 до 100, угадай какое? У тебя 10 попыток "

1.upto(10) do |i|
	
	print  "Попытка #{i}: "
	answer = gets.to_i

	if  answer == num
		puts "Верно, угадал!"
		exit
	elsif answer > num
		puts "Нет, мое число меньше"

	else 
		puts "Нет , мое число больше"
	end
	
	count = 10 - i
	
	if count > 0
		puts "Осталось попыток: #{count}"
   	end
end


puts "К сожалению ты не отгадал мое число, я загадывал число #{num}"