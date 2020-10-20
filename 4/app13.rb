# encoding: cp866

print "Сколько денег будем откладывать в месяц? "
d = gets.to_f

print "Сколько лет будем откладывать ? "
y = gets.to_i

print "Сколько месяцев будем откладывать? "
m = gets.to_i

s = 0

1.upto(y) do  |n|
	1.upto(12) do |x|
		s = s + d
		puts "Год #{n}, месяц #{x}: \tнакоплено #{s}"
	end		
end

1.upto(m) do |i|
	s = s + d
	puts "Год #{y + 1}, месяц #{i}: \tнакоплено #{s}"
end