# encoding: cp866

arr = [:rock, :scissors, :paper]

print "Загадай камень(0), ножницы(1) или бумагу(2): "
selected_item = gets.to_i

computers_step = arr[rand(0..2)]
users_step = arr[selected_item]

if computers_step == users_step
	puts "Компьютер тоже загадал  #{computers_step}"
	exit
end

if computers_step == :rock
	if users_step == :scissors
		puts "У компьютера камень, выиграл компьютер"
	else
		puts "У компьютера камень, значит выиграли Вы"
	end
end

if computers_step == :scissors
	if users_step == :rock
		puts "У компьютера ножницы, значит выиграли Вы"
	else
		puts "У компьютера ножницы, выиграл компьютер"
	end
end

if computers_step == :paper
	if users_step == :rock
		puts "У компьютера бумага, выиграл компьютер"
	else
		puts "У компьютера бумага, значит выиграли Вы"
	end
end


