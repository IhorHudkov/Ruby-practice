# encoding: cp866

dictionary = {
	'dog' => ['ᮡ���', '���'],
	'cat' => ['���', '��誠'],
	'girl' => ['����誠', '����窠'],
	'plain' => ['�������', '���⮩', '������᫮����', '����', '஢��']
}

loop do
	
	print '������ ᫮�� �� ������᪮� �몥: '
	word = gets.strip

	if word == ''
		exit
	end

	puts "�������⢮ ��ॢ����: #{dictionary[word].length}"
	puts "��ॢ���: "  
	puts dictionary[word]

end