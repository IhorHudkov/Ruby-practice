# encoding: cp866

hh = {'dog' => ['������', '���'], 'cat' => ['��誠', '���'], 'girl' => ['����誠']}
count = 0

hh.each_value do |value|
	count = count + value.size
end

puts "�������⢮ ��ॢ����: #{count}"