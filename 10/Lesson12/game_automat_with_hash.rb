# encoding: cp866

puts '��� "�����㪨� ������", ����� 2'

score = 100

loop do
	puts '� ��� ���� 100 �����஢, ��� �����?(y/n): '
	answer = gets.strip.capitalize

	if answer == 'Y'
		puts '����, ����ࠥ�'
		break
	elsif answer == 'N'
		puts '����..'
		exit
	else 
		puts '��� �⢥� �� ����⥭..'
	end
end

puts '�⮡� ������ ���� ������ Enter'

hh = {'000' => -50, '111' => 10, '222' => 20, '333' => 30, '444' => 40, '555' => 50, '666' => -40, '777' => -30, '888' => -20, '999' => -10} 

while 2 + 2 == 4
	
	gets
	a = rand(0..9).to_s
	b = rand(0..9).to_s
	c = rand(0..9).to_s
	result = a + b + c
	
	10.times do
		print "#{rand(0..9)}\r"
		sleep 0.005
	end
	print "#{a}\r"
	
	10.times do
		print "#{a} #{rand(0..9)}\r"
		sleep 0.005
	end
	print "#{a} #{b}\r"

	10.times do
		print "#{a} #{b} #{rand(0..9)}\r"
		sleep 0.005
	end
	print "#{a} #{b} #{c}"

	if hh[result]
		
		score += hh[result]
		
		if score > 0
			
			if hh[result] < 0
				puts "\n���, � ��襣� ��� �諮 #{-hh[result]} �����஢"
				puts "����� �� ����: #{score} �����஢"	
			end
		
			if hh[result] > 0
				puts "\n����ࠢ�塞, �� �먣ࠫ� #{hh[result]} �����஢"
				puts "����� �� ����: #{score} �����஢"	
			end
		
		else
			
			puts "\n#{hh[result]} �����஢.\n�� ��襬 ���� �����稫��� �।�⢠, ��� �த������� �������� ���"
			exit
	        
		end
	else
		score -= 2
		
		if score > 0
			puts "\n-2 ������. ����� �� ��襬 ����: #{score} �����஢"
		else
			puts "\n-2 ������.\n�� ��襬 ���� �����稫��� �।�⢠, ��� �த������� �������� ���"
			exit
		end
	end

end