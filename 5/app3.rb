# encoding: cp866

print "Сколько гостей к вам придет? "
n = gets.to_i

if n < 0
	puts "Ошибка!"
	exit
end

if n != 0
	puts "Отлично, кто-то  придет!"
end

if n == 1
	puts "Придет один человек"
end

if n == 2
	puts "Придут два человека"
end

if n > 2
	puts "Будет много гостей"
end

if n == 0
	puts "Никто не придет =("
end