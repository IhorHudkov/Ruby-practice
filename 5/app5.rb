# encoding: cp866

puts "��� \"�����㪨� ������\" v.1.0 "

print "����쪮 ��� ���? "
age = gets.to_i

if age >= 18
	puts "��宦� � ��� ���� 100$" 
	money = 100

	print "���� �����?(Y/N) " 
	answer = gets.strip.capitalize
	
	if answer == "Y"
		puts "�⫨筮, ⮣�� ��� ⮣� �⮡� ������ ���� ������ Enter"
		1000.times do
			
			if money <= 0 
				puts "��宦� � ��� �����稫��� ���죨, �������� ���"
				exit	
			end
			
			gets
			
			x = rand(0..9)
			y = rand(0..9)
			z = rand(0..9)
			
			
			10.times do 
				print "#{rand(0..9)}"
				sleep 0.05
				print "\r"
			end
			print "#{x}--"
			
			10.times do 
				print "#{rand(0..9)}"
				sleep 0.05
				print "\r"
				print "#{x}--"
			end
			print "#{y}--"
			
			10.times do 
				print "#{rand(0..9)}"
				sleep 0.05
				print "\r"
				print "#{x}--#{y}--"
			end
			print "#{z}\n"	
		
		      # puts "--#{x}--#{y}--#{z}--"			

			if x == 0 && y == 0 && z == 0
				money = money - 50
				puts "�� �ந�ࠫ� 50$ , �� ���� ��⠫���: #{money}"
			end
			
			if x == 1 && y == 1 && z == 1
				money = money + 10
				puts "�� �먣ࠫ� 10$ , �� ���� ��⠫���: #{money}"
			end
			
			if x == 2 && y == 2 && z == 2
				money = money + 20
				puts "�� �먣ࠫ� 20$ , �� ���� ��⠫���: #{money}"
			end
			
			if x == 3 && y == 3 && z == 3
				money = money + 30
				puts "�� �먣ࠫ� 30$ , �� ���� ��⠫���: #{money}"
			end
			
			if x == 4 && y == 4 && z == 4
				money = money + 40
				puts "�� �먣ࠫ� 40$ , �� ���� ��⠫���: #{money}"
			end
			
			if x == 5 && y == 5 && z == 5
				money = money + 50
				puts "�� �먣ࠫ� 50$ , �� ���� ��⠫���: #{money}"
			end
			
			if x == 6 && y == 6 && z == 6
				puts "�� �ந�ࠫ� �� ���죨, �� ���� ��⠫���: 0"
				exit
			end
			
			if x == 7 && y == 7 && z == 7
				money = money - 20
				puts "�� �ந�ࠫ� 20$ , �� ���� ��⠫���: #{money}"
			end
				
			if x == 8 && y == 8 && z == 8
				money = money - 30
				puts "�� �ந�ࠫ� 30$ , �� ���� ��⠫���: #{money}"
			end
			
			if x == 9 && y == 9 && z == 9
				money = money - 40
				puts "�� �ந�ࠫ� 40$ , �� ���� ��⠫���: #{money}"
			end
			 		
		end
	end		
end