# encoding: cp866

print "Сколько раз будем играть? "
x = gets.to_i

print "Введите ваше любимое число "
f = gets.to_i

1.upto(x) do |i|
	puts "Играем #{i} раз.."
	result = rand(1..50)

	if result == f
		puts "Вы выиграли!"
  	end
end