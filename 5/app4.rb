# encoding: cp866

print "����쪮 ��� ���? "
age = gets.to_f

print "����ࠥ�?(Y/N) "
answer = gets.strip.upcase

if age >= 18 && answer == "Y"
	print "Welcome! " 
end

if age < 18
	print "��� �� ��� 18 ���, ��� �� �������� =( "
end