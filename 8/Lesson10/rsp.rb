# encoding: cp866

arr = [:rock, :scissors, :paper]

print "������� ������(0), �������(1) ��� �㬠��(2): "
selected_item = gets.to_i

computers_step = arr[rand(0..2)]
users_step = arr[selected_item]

if computers_step == users_step
	puts "�������� ⮦� �������  #{computers_step}"
	exit
end

if computers_step == :rock
	if users_step == :scissors
		puts "� �������� ������, �먣ࠫ ��������"
	else
		puts "� �������� ������, ����� �먣ࠫ� ��"
	end
end

if computers_step == :scissors
	if users_step == :rock
		puts "� �������� �������, ����� �먣ࠫ� ��"
	else
		puts "� �������� �������, �먣ࠫ ��������"
	end
end

if computers_step == :paper
	if users_step == :rock
		puts "� �������� �㬠��, �먣ࠫ ��������"
	else
		puts "� �������� �㬠��, ����� �먣ࠫ� ��"
	end
end


