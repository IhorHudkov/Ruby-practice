# encoding: cp866

print "����쪮 ���⥩ � ��� �ਤ��? "
n = gets.to_i

if n < 0
	puts "�訡��!"
	exit
end

if n != 0
	puts "�⫨筮, ��-�  �ਤ��!"
end

if n == 1
	puts "�ਤ�� ���� 祫����"
end

if n == 2
	puts "�ਤ�� ��� 祫�����"
end

if n > 2
	puts "�㤥� ����� ���⥩"
end

if n == 0
	puts "���� �� �ਤ�� =("
end