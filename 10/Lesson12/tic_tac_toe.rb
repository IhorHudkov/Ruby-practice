puts 'Game "Tic-Tac-Toe!" version 1.0'

print 'Choose matrix size (minimal size = 3( * 3), maximum - 10( * 10)): '
matrix_size = gets.to_i
@user_simbol = ''
@computer_simbol = ''

loop do
	print 'Choose between "x" and "o": '
	@user_simbol = gets.strip.downcase

	if @user_simbol == 'x'
		@computer_simbol = 'o'
		break
	elsif @user_simbol == 'o'
		@computer_simbol = 'x'
		break
	else puts "Can't understand what you want, sorry.." 
		
	end
end

def show_field field
	system ('cls')

	field.each do |item|
		item.each do |sub_item|
			print sub_item
		end
		print "\n"
	end

	field
end

def created_field size
	
	field = []
	row = []
	last_row = []

	size.times { row << '__|' }
	row[size - 1].chop!
	(size - 1).times { field << Array.new(row)}


	size.times { last_row << '  |'}
	last_row[size - 1].chop!
	field << last_row

	show_field field
end

cell = {'Row' => 0, 'Column' => 0}

def field_update field, size, cell, simbol
	
	if cell['Row'] < size && cell['Column'] < size
		field[cell['Row'] - 1][cell['Column'] - 1] = '_' + simbol + '|'	
	elsif cell['Row'] < size && cell['Column'] == size
		field[cell['Row'] - 1][cell['Column'] - 1] = '_' + simbol
	elsif cell['Row'] == size && cell['Column'] < size
		field[cell['Row'] - 1][cell['Column'] - 1] = ' ' + simbol + '|'
	else
		field[cell['Row'] - 1][cell['Column'] - 1] = ' ' + simbol
	end

	show_field field
end

def users_move_method cell
	print "\n"
	puts 'Your turn, enter cell coordinates(Row and Column separated by a space)'
	users_move = gets.strip
	cell['Row'] = users_move.partition(" ")[0].to_i
	cell['Column'] = users_move.partition(" ")[2].to_i
	cell
end

def computer_move_method field, size, cell
	print "\n"
	puts 'Computers turn, please wait..'
	
#	loop do
#		cell['Row'] = rand(1..size)
#		cell['Column'] = rand(1..size)
#		break if (!field[cell['Row'] - 1][cell['Column'] - 1].include? "x") && (!field[cell['Row'] - 1][cell['Column'] -1].include? "o")
#	end

	computer_simbol_counter = 0
	simbol_counter = 0
	row_with_max_count = nil
	max = 0

	field.each do |item|
		item.each do |sub_item|
			if (sub_item.include? @computer_simbol) || (sub_item.include? @user_simbol)
				simbol_counter += 1
			end
		end
	end

	if simbol_counter == 0
		loop do
			cell['Row'] = rand(1..size)
			cell['Column'] = rand(1..size)
			break if (!field[cell['Row'] - 1][cell['Column'] - 1].include? "x") && (!field[cell['Row'] - 1][cell['Column'] -1].include? "o")
		end
		return cell
	else
		simbol_counter = 0
	end

	field.each_with_index do |item, i|
		user_simbol_counter = 0
		item.each do |sub_item|
			if sub_item.include? @user_simbol
				user_simbol_counter += 1
			end
			if sub_item.include? @computer_simbol
				computer_simbol_counter += 1
			end
		end
		next if user_simbol_counter > 0

		
		if computer_simbol_counter >= max
			max = computer_simbol_counter
			row_with_max_count = i
		end
		computer_simbol_counter = 0
	end

	if row_with_max_count 
		if (!field[row_with_max_count].include? @user_simbol)
			cell['Row'] = row_with_max_count + 1
			loop do
				cell['Column'] = rand(1..size)
				break if (!field[cell['Row'] - 1][cell['Column'] - 1].include? @computer_simbol)
			end
		else
			loop do
				cell['Row'] = rand(1..size)
				cell['Column'] = rand(1..size)
				break if (!field[cell['Row'] - 1][cell['Column'] - 1].include? "x") && (!field[cell['Row'] - 1][cell['Column'] -1].include? "o")
			end	
		end
	else
		loop do
			cell['Row'] = rand(1..size)
			cell['Column'] = rand(1..size)
			break if (!field[cell['Row'] - 1][cell['Column'] - 1].include? "x") && (!field[cell['Row'] - 1][cell['Column'] -1].include? "o")
		end

	end
	cell
end

def check_result field, size
	
	final_game_result = nil

	field.each do |item|
		x_counter = 0
		o_counter = 0
		item.each do |sub_item|
			if sub_item.include? "x"
				x_counter += 1
			elsif sub_item.include? "o"
				o_counter += 1
			end
		end
		if x_counter == size
			final_game_result = 'x'
			break
		elsif o_counter == size
			final_game_result = 'o'
			break
		end
	end

	if final_game_result
		return final_game_result
	end


	size.times do |i|
		x_counter = 0
		o_counter = 0

		field.each do |item|
			
			if item[i].include? "x"
				x_counter += 1
			elsif  item[i].include? "o"
				o_counter += 1
			end
			
			if x_counter == size
				final_game_result = 'x'
				break
			elsif o_counter == size
				final_game_result = 'o'
				break
			end		

		end
	end

	if final_game_result
		return final_game_result
	end
	
	x_counter = 0
	o_counter = 0
		
	field.each_with_index do |item, i|
		if item[i].include? "x"
			x_counter += 1
		elsif  item[i].include? "o"
			o_counter += 1
		end
			
		if x_counter == size
			final_game_result = 'x'
			break
		elsif o_counter == size
			final_game_result = 'o'
			break
		end		

	end

	if final_game_result
		return final_game_result
	end

	x_counter = 0
	o_counter = 0
		
	field.each_with_index do |item, i|
		if item[size - 1 - i].include? "x"
			x_counter += 1
		elsif  item[size - 1 - i].include? "o"
			o_counter += 1
		end
			
		if x_counter == size
			final_game_result = 'x'
			break
		elsif o_counter == size
			final_game_result = 'o'
			break
		end		

	end

	if final_game_result
		return final_game_result
	end
	
	total_counter = 0	
	
	field.each do |item|
		item.each do |sub_item|
			if (sub_item.include? "x") || (sub_item.include? "o")
				total_counter += 1
			end
		end
	end

	if total_counter == (size * size)
		show_field field
		puts "\nDraw!"
		final_game_result = 'Draw'
	end

	final_game_result
end

puts

game_field = created_field matrix_size


@winner = nil

if @user_simbol == 'x'
	users_move_method cell
	game_field = field_update game_field, matrix_size, cell, @user_simbol

else
	computer_move_method game_field, matrix_size, cell
	sleep 1.5
	game_field = field_update game_field, matrix_size, cell, @computer_simbol

end

while 2 + 2 == 4
	if @user_simbol == 'x'
		computer_move_method game_field, matrix_size, cell
		sleep 1.5
		game_field = field_update game_field, matrix_size, cell, @computer_simbol
		@winner = check_result game_field, matrix_size
		
		if @winner
			break
		end
		
		users_move_method cell
		game_field = field_update game_field, matrix_size, cell, @user_simbol
		@winner = check_result game_field, matrix_size

		if @winner
			break
		end

	else
		users_move_method cell
		game_field = field_update game_field, matrix_size, cell, @user_simbol
		@winner = check_result game_field, matrix_size

		if @winner
			break
		end

		computer_move_method game_field, matrix_size, cell
		sleep 1.5
		game_field = field_update game_field, matrix_size, cell, @computer_simbol
		@winner = check_result game_field, matrix_size

		if @winner
			break
		end
	end
end

if @user_simbol == @winner
	puts "\nYou won!!!!"
elsif @computer_simbol == @winner
	puts "\nComputer wins =("
end

puts "\nPress enter for exit"
gets
system ('cls')