# encoding: cp866

dict = {'dog' => 'собака', 'cat' => 'кошка', 'girl' => 'девушка'}

loop do
	
	print 'Введите слово на английском языке: '
	word = gets.strip

	if word == ''
		exit
	end

	puts dict[word]

end