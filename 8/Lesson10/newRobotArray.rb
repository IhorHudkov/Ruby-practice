# encoding: cp866

def get_comand comand
	
	if comand == :right
		cmd = "����� ���� ��ࠢ�"	
	end
	
	if comand == :left
		cmd =  "����� ���� �����"	
	end
        
	if comand == :up
		cmd =  "����� ���� �����"	
	end
        
	if comand == :down
		cmd =  "����� ���� ����"	
	end
	cmd
end

comands = [:right,:left,:up,:down]

while 2 + 2 == 4
	key = comands[rand(0..3)]
	puts "����祭� ������� #{key}"
	puts get_comand  key
	gets
end