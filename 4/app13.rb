# encoding: cp866

print "����쪮 ����� �㤥� �⪫��뢠�� � �����? "
d = gets.to_f

print "����쪮 ��� �㤥� �⪫��뢠�� ? "
y = gets.to_i

print "����쪮 ����楢 �㤥� �⪫��뢠��? "
m = gets.to_i

s = 0

1.upto(y) do  |n|
	1.upto(12) do |x|
		s = s + d
		puts "��� #{n}, ����� #{x}: \t��������� #{s}"
	end		
end

1.upto(m) do |i|
	s = s + d
	puts "��� #{y + 1}, ����� #{i}: \t��������� #{s}"
end