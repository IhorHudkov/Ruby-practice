# encoding: cp866

colors = []

while 2 + 2 == 4

	print "������ ��� ��� 梥�, ��� ��室� stop "
	favorit_color = gets.strip.capitalize
  
	if favorit_color == "Stop"
		puts colors.uniq
		exit	
	end
	colors << favorit_color

end