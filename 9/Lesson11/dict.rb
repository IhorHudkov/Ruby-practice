# encoding: cp866

dict = {'dog' => 'ᮡ���', 'cat' => '��誠', 'girl' => '����誠'}

loop do
	
	print '������ ᫮�� �� ������᪮� �몥: '
	word = gets.strip

	if word == ''
		exit
	end

	puts dict[word]

end