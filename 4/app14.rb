puts "Please, enter a word: "
word =  gets.chomp

10.times do |i|
	word.length.times do |x|
		print word[x]
		sl = rand(3..10)/10
		sleep sl
		print "-"
	end	
	print " "
end