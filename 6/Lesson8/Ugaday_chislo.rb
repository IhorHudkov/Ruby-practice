# encoding: cp866

num = rand(0..100)

puts "� ������� �᫮ �� 0 �� 100, 㣠��� �����? � ⥡� 10 ����⮪ "

1.upto(10) do |i|
	
	print  "����⪠ #{i}: "
	answer = gets.to_i

	if  answer == num
		puts "��୮, 㣠���!"
		exit
	elsif answer > num
		puts "���, ��� �᫮ �����"

	else 
		puts "��� , ��� �᫮ �����"
	end
	
	count = 10 - i
	
	if count > 0
		puts "��⠫��� ����⮪: #{count}"
   	end
end


puts "� ᮦ������ �� �� �⣠��� ��� �᫮, � �����뢠� �᫮ #{num}"