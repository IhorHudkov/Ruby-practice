# encoding: cp866

puts 'Игра "Однорукий бандит", версия 2'

score = 100

loop do
	puts 'У вас есть 100 долларов, хотите сыграть?(y/n): '
	answer = gets.strip.capitalize

	if answer == 'Y'
		puts 'Хорошо, поиграем'
		break
	elsif answer == 'N'
		puts 'Жаль..'
		exit
	else 
		puts 'Ваш ответ не понятен..'
	end
end

puts 'Чтобы дернуть ручку нажмите Enter'

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
				puts "\nУвы, с вашего счета ушло #{-hh[result]} долларов"
				puts "Сейчас на счету: #{score} долларов"	
			end
		
			if hh[result] > 0
				puts "\nПоздравляем, Вы выиграли #{hh[result]} долларов"
				puts "Сейчас на счету: #{score} долларов"	
			end
		
		else
			
			puts "\n#{hh[result]} долларов.\nНа Вашем счету закончились средства, для продолжения пополните счет"
			exit
	        
		end
	else
		score -= 2
		
		if score > 0
			puts "\n-2 доллара. Сейчас на Вашем счету: #{score} долларов"
		else
			puts "\n-2 доллара.\nНа Вашем счету закончились средства, для продолжения пополните счет"
			exit
		end
	end

end