# encoding: cp866

print "Сколько вам лет? "
age = gets.to_f

print "Поиграем?(Y/N) "
answer = gets.strip.upcase

if age >= 18 && answer == "Y"
	print "Welcome! " 
end

if age < 18
	print "Вам еще нет 18 лет, игра не возможна =( "
end