# encoding: cp866

print "����쪮 ����� �㤥� �⪫��뢠�� � �����? "
stavka = gets.to_f

sum = 0

print "����쪮 ����楢 �㤥� ������? "
n = gets.to_i

1.upto(n) do 
	sum = sum + stavka
end

puts "�� #{n} ����楢 �㤥� ��������� #{sum} �����"