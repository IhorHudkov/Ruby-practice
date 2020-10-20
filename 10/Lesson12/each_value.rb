# encoding: cp866

hh = {'dog' => ['Собака', 'Пес'], 'cat' => ['Кошка', 'Кот'], 'girl' => ['Девушка']}
count = 0

hh.each_value do |value|
	count = count + value.size
end

puts "Колличество переводов: #{count}"