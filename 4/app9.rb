# encoding: cp866

print "Сколько денег будем откладывать в месяц? "
stavka = gets.to_f

sum = 0

print "Сколько месяцев будем копить? "
n = gets.to_i

1.upto(n) do 
	sum = sum + stavka
end

puts "За #{n} месяцев будет накоплено #{sum} денег"