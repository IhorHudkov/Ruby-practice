# encoding: cp866

dictionary = {
	'dog' => ['собака', 'пес'],
	'cat' => ['кот', 'кошка'],
	'girl' => ['девушка', 'девочка'],
	'plain' => ['гладкий', 'простой', 'незамысловатый', 'чистый', 'ровный']
}

loop do
	
	print 'Введите слово на английском языке: '
	word = gets.strip

	if word == ''
		exit
	end

	puts "Колличество переводов: #{dictionary[word].length}"
	puts "Переводы: "  
	puts dictionary[word]

end