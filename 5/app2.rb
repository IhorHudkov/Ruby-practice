# encoding: cp866

print "����쪮 ࠧ �㤥� �����? "
x = gets.to_i

print "������ ��� ���� �᫮ "
f = gets.to_i

1.upto(x) do |i|
	puts "��ࠥ� #{i} ࠧ.."
	result = rand(1..50)

	if result == f
		puts "�� �먣ࠫ�!"
  	end
end