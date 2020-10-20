# encoding: cp866

puts "Игра \"Однорукий бандит\" v.1.0 "

print "Сколько вам лет? "
age = gets.to_i

if age >= 18
	puts "Похоже у вас есть 100$" 
	money = 100

	print "Хотите сыграть?(Y/N) " 
	answer = gets.strip.capitalize
	
	if answer == "Y"
		puts "Отлично, тогда для того чтобы дернуть ручку нажмите Enter"
		1000.times do
			
			if money <= 0 
				puts "Похоже у вас закончились деньги, пополните счет"
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
				puts "Вы проиграли 50$ , на счету осталось: #{money}"
			end
			
			if x == 1 && y == 1 && z == 1
				money = money + 10
				puts "Вы выиграли 10$ , на счету осталось: #{money}"
			end
			
			if x == 2 && y == 2 && z == 2
				money = money + 20
				puts "Вы выиграли 20$ , на счету осталось: #{money}"
			end
			
			if x == 3 && y == 3 && z == 3
				money = money + 30
				puts "Вы выиграли 30$ , на счету осталось: #{money}"
			end
			
			if x == 4 && y == 4 && z == 4
				money = money + 40
				puts "Вы выиграли 40$ , на счету осталось: #{money}"
			end
			
			if x == 5 && y == 5 && z == 5
				money = money + 50
				puts "Вы выиграли 50$ , на счету осталось: #{money}"
			end
			
			if x == 6 && y == 6 && z == 6
				puts "Вы проиграли все деньги, на счету осталось: 0"
				exit
			end
			
			if x == 7 && y == 7 && z == 7
				money = money - 20
				puts "Вы проиграли 20$ , на счету осталось: #{money}"
			end
				
			if x == 8 && y == 8 && z == 8
				money = money - 30
				puts "Вы проиграли 30$ , на счету осталось: #{money}"
			end
			
			if x == 9 && y == 9 && z == 9
				money = money - 40
				puts "Вы проиграли 40$ , на счету осталось: #{money}"
			end
			 		
		end
	end		
end