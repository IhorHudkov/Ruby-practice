# encoding: cp866

def get_comand comand
	
	if comand == :right
		cmd = "Робот едет вправо"	
	end
	
	if comand == :left
		cmd =  "Робот едет влево"	
	end
        
	if comand == :up
		cmd =  "Робот едет вверх"	
	end
        
	if comand == :down
		cmd =  "Робот едет вниз"	
	end
	cmd
end

comands = [:right,:left,:up,:down]

while 2 + 2 == 4
	key = comands[rand(0..3)]
	puts "Получена команда #{key}"
	puts get_comand  key
	gets
end